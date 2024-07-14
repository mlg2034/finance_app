import 'package:finance_app/feature/app/logic/store.dart';
import 'package:finance_app/feature/deposit/data/deposit_repository.dart';
import 'package:finance_app/feature/deposit/presentation/logic/create_deposit/create_deposit_action.dart';
import 'package:finance_app/feature/deposit/presentation/logic/create_deposit/create_deposit_state.dart';
import 'package:redux/redux.dart';

class CreateDepositMiddleWare {
  final DepositRepository _depositRepository;
  CreateDepositMiddleWare(this._depositRepository);
  Future<void> createDepositMiddleWare(Store<AppState> store,
      CreateDepositAction action, NextDispatcher next) async {
    store.dispatch(
      const CreateDepositAction(
        CreateDepositState(deposit: null, isError: false, isLoading: true),
      ),
    );

    try {
      await _depositRepository
          .insertDeposit(action.createDepositState.deposit!);
      store.dispatch(
        const CreateDepositAction(
          CreateDepositState(
            isError: false,
            isLoading: false,
          ),
        ),
      );
    } catch (error) {
      store.dispatch(
        const CreateDepositAction(
          CreateDepositState(isLoading: false, isError: true),
        ),
      );
    }

    next(action);
  }
}
