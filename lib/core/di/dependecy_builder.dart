import 'package:finance_app/core/db/data_base_helper.dart';
import 'package:finance_app/core/di/dependecy_inicialization.dart';
import 'package:finance_app/core/di/dependecy_provider.dart';
import 'package:finance_app/feature/app/logic/app_middle_ware.dart';
import 'package:finance_app/feature/app/logic/store.dart';
import 'package:finance_app/feature/deposit/data/deposit_repository.dart';
import 'package:finance_app/feature/deposit/presentation/logic/create_deposit/create_deposit_middle_ware.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class DependecyBuilder extends StatelessWidget {
  final Widget child;
  const DependecyBuilder({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final localeDataBase = LocaleDataBase();
    final depositRepository = DepositRepository(localeDataBase);
    final createDepositMiddleWare = CreateDepositMiddleWare(depositRepository);
    final appMiddleWare = AppMiddleWare(createDepositMiddleWare);
    return DependecyProvider(
      dependecyInicialization: DependecyInicialization(
        depositRepository: depositRepository,
        createDepositMiddleWare: createDepositMiddleWare,
        appMiddleWare: appMiddleWare,
      ),
      child: StoreProvider(
        store: Store<AppState>(
          appReducer,
          initialState: AppState.initialState(),
        ),
        child: Builder(builder: (context) {
          return child;
        }),
      ),
    );
  }
}
