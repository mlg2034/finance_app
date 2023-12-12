import 'package:finance_app/feature/category/presentation/widgets/create_category_alert_dialog_content.dart';
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
    final List<int> amountOfCategies = [];
    return Scaffold(
      body: Column(
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
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      content: CreateCategorryAlertDialogContent(
                        categoryNameController: categoryNameController,
                        amountOfCategoryController: amountOfCategoryController,
                        categories: categories,
                      ),
                    );
                  },
                );
              },
              child: const Text('CreateCategoroes')),
        ],
      ),
    );
  }
}
