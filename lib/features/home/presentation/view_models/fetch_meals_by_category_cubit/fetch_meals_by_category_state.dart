part of 'fetch_meals_by_category_cubit.dart';

sealed class FetchMealsByCategoryState extends Equatable {
  const FetchMealsByCategoryState();

  @override
  List<Object> get props => [];
}

final class FetchMealsByCategoryInitial extends FetchMealsByCategoryState {}

final class FetchMealsByCategoryLoading extends FetchMealsByCategoryState {}

final class FetchMealsByCategorySuccess extends FetchMealsByCategoryState {}

final class FetchMealsByCategoryFailure extends FetchMealsByCategoryState {
  final String err;

  const FetchMealsByCategoryFailure({required this.err});
}
