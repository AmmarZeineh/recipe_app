part of 'fetch_random_meal_cubit.dart';

sealed class FetchRandomMealState extends Equatable {
  const FetchRandomMealState();

  @override
  List<Object> get props => [];
}

final class FetchRandomMealInitial extends FetchRandomMealState {}

final class FetchRandomMealLoading extends FetchRandomMealState {}

final class FetchRandomMealSuccess extends FetchRandomMealState {
  final MealModel mealModel;

  const FetchRandomMealSuccess({required this.mealModel});
}

final class FetchRandomMealFailure extends FetchRandomMealState {
  final String err;

  const FetchRandomMealFailure({required this.err});
}
