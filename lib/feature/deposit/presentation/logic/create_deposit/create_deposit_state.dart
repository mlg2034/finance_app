import 'package:finance_app/feature/deposit/domain/model/deposit_model.dart';
import 'package:flutter/foundation.dart';
@immutable
class CreateDepositState {
  final bool ?isLoading;
  final DepositModel? deposit;
  final bool ?isError;
  const CreateDepositState({
     this.deposit,
     this.isError,
     this.isLoading,
  });

  factory CreateDepositState.initial() => CreateDepositState(
        deposit: DepositModel(
          name: '',
          description: '',
          id: 0,
          amount: 0.0,
        ),
        isError: false,
        isLoading: false,
      );

  CreateDepositState copyWith({
     DepositModel? deposit,
     bool ?isLoading,
     bool ?isError,
  }) {
    return CreateDepositState(
      deposit: deposit??this.deposit,
      isError: isError??this.isError,
      isLoading: isLoading??this.isLoading  ,
    );
  }
}
