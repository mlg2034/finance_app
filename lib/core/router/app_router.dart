import 'package:beamer/beamer.dart';
import 'package:finance_app/feature/deposit/presentation/screen/create_category_page.dart';
import 'package:finance_app/feature/main/presentation/screeen/main_screen.dart';

final routerDelegate = BeamerDelegate(
  locationBuilder: RoutesLocationBuilder(
    routes: {
      '/': (context, state, data) => const CreateDepositPage(),
      '/main': (context, state, data) => const MainPage()
    },
  ),
);
