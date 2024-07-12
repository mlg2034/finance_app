import 'package:finance_app/core/db/data_base_helper.dart';
import 'package:finance_app/feature/deposit/data/deposit_repository.dart';

class DependecyInicialization {
  final LocaleDataBase localeDataBase;
  final DepositRepository depositRepository;

  DependecyInicialization({
    required this.depositRepository,
    required this.localeDataBase,
  });
}
