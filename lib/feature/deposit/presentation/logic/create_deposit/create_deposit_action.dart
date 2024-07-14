import 'package:finance_app/feature/app/logic/store.dart';
import 'package:finance_app/feature/deposit/presentation/logic/create_deposit/create_deposit_state.dart';
import 'package:flutter/foundation.dart';

import 'package:redux/redux.dart';

@immutable
class CreateDepositAction {
  final CreateDepositState createDepositState;
  const CreateDepositAction(this.createDepositState);
}

Future<void> createDeposit(Store<AppState> store) async {
  store.dispatch(
    const CreateDepositAction(
      CreateDepositState(isLoading: true),
    ),
  );
  try{  
  }catch(error){
    store.dispatch(
    const CreateDepositAction(
      CreateDepositState(isError: true),
    ),
  );
  }
}
