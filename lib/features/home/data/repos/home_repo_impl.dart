import 'package:dio/dio.dart';
import 'package:either_dart/src/either.dart';
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
}
