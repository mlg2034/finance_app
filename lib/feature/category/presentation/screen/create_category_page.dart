import 'package:finance_app/feature/category/presentation/widgets/create_category_alert_dialog_content.dart';
import 'package:finance_app/feature/main/presentation/screeen/main_screen.dart';
import 'package:finance_app/ui_components/common_widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class CreateCategoryPage extends StatelessWidget {
  const CreateCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController categoryNameController =
        TextEditingController();
    final TextEditingController amountOfCategoryController =
        TextEditingController();
    final TextEditingController countOfCategoryControleer =
        TextEditingController();
    final List<String> categories = [];
    final List<String> amountOfCategories = [];

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: CustomTextField(
                  hintText: 'Count of category',
                  controller: countOfCategoryControleer),
            ),
            ElevatedButton(
              onPressed: () async {
                for (int i = 1;
                    i <= int.parse(countOfCategoryControleer.text);
                    i++) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        content: CreateCategorryAlertDialogContent(
                          categoryNameController: categoryNameController,
                          amountOfCategoryController:
                              amountOfCategoryController,
                          categories: categories,
                          index: i,
                          amountOfCategories: amountOfCategories,
                        ),
                      );
                    },
                  );
                }
                countOfCategoryControleer.clear();
              },
              child: const Text('CreateCategoroes'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MainPage(
                      categories: categories,
                      amountOfCategories: amountOfCategories,
                    ),
                  ),
                );
              },
              child: Text('Show all categories'),
            ),
          ],
        ),
      ),
    );
  }
}
