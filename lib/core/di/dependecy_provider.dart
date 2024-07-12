import 'package:finance_app/core/di/dependecy_inicialization.dart';
import 'package:flutter/material.dart';

class DependecyProvider extends InheritedWidget {
  final DependecyInicialization dependecyInicialization;
  const DependecyProvider({
    super.key,
    required super.child,
    required this.dependecyInicialization,
  });

  static DependecyProvider of(BuildContext conxtex) {
    final DependecyProvider? result =
        conxtex.dependOnInheritedWidgetOfExactType();
    assert(result != null, 'No DependencyProvider found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(DependecyProvider oldWidget) {
    return dependecyInicialization != oldWidget.dependecyInicialization;
  }
}

