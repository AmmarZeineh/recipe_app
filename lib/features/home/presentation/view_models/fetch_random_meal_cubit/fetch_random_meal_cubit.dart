import 'package:bloc/bloc.dart';
import 'package:either_dart/either.dart';
import 'package:equatable/equatable.dart';
import 'package:recipe_app/features/home/data/models/meal_model.dart';
import 'package:recipe_app/features/home/data/repos/home_repo.dart';

part 'fetch_random_meal_state.dart';

class FetchRandomMealCubit extends Cubit<FetchRandomMealState> {
  FetchRandomMealCubit(this.homeRepo) : super(FetchRandomMealInitial());
  final HomeRepo homeRepo;
  Future<void> fetchRandomMeal() async {
    emit(FetchRandomMealLoading());
    var result = homeRepo.fetchRandomMeal();

    result.fold((failure) {
      emit(FetchRandomMealFailure(err: failure.errMessage));
    }, (meal) {
      emit(FetchRandomMealSuccess(mealModel: meal));
    });
  }
}
