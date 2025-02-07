import 'package:bloc/bloc.dart';
import 'package:either_dart/either.dart';
import 'package:equatable/equatable.dart';

import 'package:recipe_app/features/home/data/models/meal_model.dart';
import 'package:recipe_app/features/home/data/repos/home_repo.dart';

part 'fetch_meal_details_by_id_state.dart';

class FetchMealDetailsByIdCubit extends Cubit<FetchMealDetailsByIdState> {
  FetchMealDetailsByIdCubit(this.homeRepo)
      : super(FetchMealDetailsByIdInitial());
  final HomeRepo homeRepo;
  MealModel? mealModel;
  Future<void> fetchMealDetailsById(int id) async {
    emit(FetchMealDetailsByIdLoading());
    var result = homeRepo.fetchMealDetailById(id);
    result.fold(
        (failure) => emit(FetchMealDetailsByIdFailure(err: failure.errMessage)),
        (meal) {
      mealModel = meal;
      emit(FetchMealDetailsByIdSuccess());
    });
  }
}
