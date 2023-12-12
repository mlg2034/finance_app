import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_event.dart';
part 'category_state.dart';
part 'category_bloc.freezed.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc() : super(const _Initial()) {
    on<_ShowCategories>(
      (event, emit) => _showCategories(event, emit),
    );
  }
  void _showCategories(_ShowCategories event, Emitter<CategoryState> emit) {
    emit(const CategoryState.loading());
    if (event.categories.isNotEmpty && event.amountOfCategories.isNotEmpty) {
      emit(
        CategoryState.createCategories(
            categories: event.categories,
            amountOfCategories: event.amountOfCategories),
      );
    } else {
      if (event.categories.isEmpty) {
        emit(const CategoryState.error(
            error: 'Categories should not be empty '));
      } else if (event.amountOfCategories.isEmpty) {
        emit(const CategoryState.error(
            error: 'Amount of categories should not b empty'));
      } else {
        emit(const CategoryState.error(
            error: 'Categories and amount of categories should not b empty'));
      }
    }
  }
}
