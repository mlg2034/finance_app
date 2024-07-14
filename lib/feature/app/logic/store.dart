import 'package:finance_app/feature/deposit/presentation/logic/create_deposit/create_deposit_action.dart';
import 'package:finance_app/feature/deposit/presentation/logic/create_deposit/create_deposit_reducer.dart';
import 'package:finance_app/feature/deposit/presentation/logic/create_deposit/create_deposit_state.dart';
import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';

AppState appReducer(AppState state, dynamic action) {
  switch (action) {
    case CreateDepositAction:
      {
        final createDepositState = CreateDepositReducer()
            .createDepositReducer(state.createDepositState, action);
        return createDepositState;
      }
    default:
      return state;
  }
}

@immutable
class AppState {
  final CreateDepositState createDepositState;
  const AppState({required this.createDepositState});

  AppState.initialState() : createDepositState = CreateDepositState.initial();
}

class AppRedux {
  static Store<AppState>? _store;

  static Store<AppState> get store {
    if (_store != null) {
      return _store!;
    } else {
      throw Exception('store does not been inicializated');
    }
  }
}
