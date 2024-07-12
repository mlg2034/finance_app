import 'package:beamer/beamer.dart';
import 'package:finance_app/core/di/dependecy_builder.dart';
import 'package:finance_app/core/router/app_router.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return DependecyBuilder(
      child: MaterialApp.router(
        routeInformationParser: BeamerParser(),
        routerDelegate: routerDelegate,
      ),
    );
  }
}
