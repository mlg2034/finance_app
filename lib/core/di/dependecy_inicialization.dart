import 'package:finance_app/feature/app/logic/app_middle_ware.dart';
import 'package:finance_app/feature/deposit/data/deposit_repository.dart';
import 'package:finance_app/feature/deposit/presentation/logic/create_deposit/create_deposit_middle_ware.dart';

class DependecyInicialization {
  final DepositRepository depositRepository;
  final CreateDepositMiddleWare createDepositMiddleWare;
  final AppMiddleWare appMiddleWare;
  DependecyInicialization({
    required this.depositRepository,
    required this.createDepositMiddleWare,
    required this.appMiddleWare
  });
}
