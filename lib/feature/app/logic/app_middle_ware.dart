import 'package:finance_app/feature/app/logic/store.dart';
import 'package:finance_app/feature/deposit/presentation/logic/create_deposit/create_deposit_action.dart';
import 'package:finance_app/feature/deposit/presentation/logic/create_deposit/create_deposit_middle_ware.dart';
import 'package:redux/redux.dart';

class AppMiddleWare {
  final CreateDepositMiddleWare createDepositMiddleWare;
  AppMiddleWare(this.createDepositMiddleWare);

  List<Middleware<AppState>> appMiddleware() {
    return [
      TypedMiddleware<AppState, CreateDepositAction>(
        createDepositMiddleWare.createDepositMiddleWare,
      ),
    ];
  }
  
}
