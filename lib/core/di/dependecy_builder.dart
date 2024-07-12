import 'package:finance_app/core/db/data_base_helper.dart';
import 'package:finance_app/core/di/dependecy_inicialization.dart';
import 'package:finance_app/core/di/dependecy_provider.dart';
import 'package:finance_app/feature/deposit/data/deposit_repository.dart';
import 'package:flutter/cupertino.dart';

class DependecyBuilder extends StatelessWidget {
  final Widget child;
  const DependecyBuilder({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return DependecyProvider(
      dependecyInicialization: DependecyInicialization(
        localeDataBase: LocaleDataBase(),
        depositRepository: DepositRepository(
          LocaleDataBase(),
        ),
      ),
      child: Builder(builder: (context) {
        return child;
      }),
    );
  }
}
