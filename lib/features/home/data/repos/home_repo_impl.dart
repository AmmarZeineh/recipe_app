import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:recipe_app/core/utils/api.dart';
import 'package:recipe_app/core/utils/errors/failures.dart';
import 'package:recipe_app/features/home/data/models/meal_model.dart';
import 'package:recipe_app/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final Api apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<MealModel>>> fetchMealsByCategory(
      String category) async {
    try {
      var response = await apiService.get(
          url: "https://www.themealdb.com/api/json/v1/1/filter.php?c=$category",
          token: null);
      List<MealModel> mealsList = [];
      for (var item in response['meals']) {
        mealsList.add(MealModel.fromJson(item));
      }
      return Right(mealsList);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioExeption(e));
      } else {
        return Left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, MealModel>> fetchRandomMeal() async {
    try {
      var response = await apiService.get(
          url: 'https://www.themealdb.com/api/json/v1/1/random.php',
          token: null);
      MealModel mealModel = MealModel.fromJson(response['meals'][0]);
      return Right(mealModel);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioExeption(e));
      } else {
        return Left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, MealModel>> fetchMealDetailById(int id) async {
    try {
      var response = await apiService.get(
          url: 'https://www.themealdb.com/api/json/v1/1/lookup.php?i=$id',
          token: null);
      MealModel mealModel = MealModel.fromJson(response['meals'][0]);
      return Right(mealModel);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioExeption(e));
      } else {
        return Left(ServerFailure(e.toString()));
      }
    }
  }
}
