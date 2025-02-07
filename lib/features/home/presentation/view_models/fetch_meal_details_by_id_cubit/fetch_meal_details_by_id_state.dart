part of 'fetch_meal_details_by_id_cubit.dart';

sealed class FetchMealDetailsByIdState extends Equatable {
  const FetchMealDetailsByIdState();

  @override
  List<Object> get props => [];
}

final class FetchMealDetailsByIdInitial extends FetchMealDetailsByIdState {}

final class FetchMealDetailsByIdLoading extends FetchMealDetailsByIdState {}

final class FetchMealDetailsByIdSuccess extends FetchMealDetailsByIdState {}

final class FetchMealDetailsByIdFailure extends FetchMealDetailsByIdState {
  final String err;

  const FetchMealDetailsByIdFailure({required this.err});
}
