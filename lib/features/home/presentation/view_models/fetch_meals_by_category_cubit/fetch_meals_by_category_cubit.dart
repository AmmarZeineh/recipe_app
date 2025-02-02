import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:recipe_app/features/home/data/models/meal_model.dart';
import 'package:recipe_app/features/home/data/repos/home_repo.dart';

part 'fetch_meals_by_category_state.dart';

class FetchMealsByCategoryCubit extends Cubit<FetchMealsByCategoryState> {
  FetchMealsByCategoryCubit(this.homeRepo)
      : super(FetchMealsByCategoryInitial());
  final HomeRepo homeRepo;
  List<MealModel> mealsList = [];
  Future<void> fetchMealsByCategory(String category) async {
    emit(FetchMealsByCategoryLoading());
    var result = await homeRepo.fetchMealsByCategory(category);
    result.fold(
        (failure) => {
              emit(FetchMealsByCategoryFailure(err: failure.errMessage))
            }, (meals) {
      mealsList = meals;
      emit(FetchMealsByCategorySuccess());
    });
  }
}
