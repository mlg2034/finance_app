part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.initial() = _Initial;
  const factory CategoryState.error({required String error}) = _Error;
  const factory CategoryState.createCategories(
      {required List<String> categories,
      required List<String> amountOfCategories}) = _CreateCategories;
  const factory CategoryState.loading() = _LoadingState;
}
