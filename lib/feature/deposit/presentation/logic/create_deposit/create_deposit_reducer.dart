import 'package:finance_app/feature/deposit/presentation/logic/create_deposit/create_deposit_action.dart';
import 'package:finance_app/feature/deposit/presentation/logic/create_deposit/create_deposit_state.dart';

class CreateDepositReducer{
  createDepositReducer(CreateDepositState prevState  ,CreateDepositAction action ){
    final payload = action.createDepositState;
    return payload.copyWith(
      isError: payload.isError,
      isLoading: payload.isLoading,
      deposit: payload.deposit,
    );
  }
}