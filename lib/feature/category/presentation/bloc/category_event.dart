part of 'category_bloc.dart';

@freezed
class CategoryEvent with _$CategoryEvent {
  const factory CategoryEvent.started() = _Started;
  const factory CategoryEvent.showCategories({required List<String> categories , required List<String> amountOfCategories})=_ShowCategories;
}