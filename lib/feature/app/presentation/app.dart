import 'package:finance_app/feature/category/presentation/screen/create_category_page.dart';
import 'package:finance_app/feature/main/presentation/screeen/main_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CreateCategoryPage(),
    );
  }
}