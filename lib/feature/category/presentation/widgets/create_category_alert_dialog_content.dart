

import 'package:finance_app/ui_components/common_widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class CreateCategorryAlertDialogContent extends StatelessWidget {
  const CreateCategorryAlertDialogContent({
    super.key,
    required this.categoryNameController,
    required this.amountOfCategoryController,
    required this.categories,
  });

  final TextEditingController categoryNameController;
  final TextEditingController amountOfCategoryController;
  final List<String> categories;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: CustomTextField(
            hintText: 'Category Name',
            controller: categoryNameController,
          ),
        ),
        CustomTextField(
            hintText: 'Amount',
            controller: amountOfCategoryController),
        ElevatedButton(
          onPressed: () {
            categories.add(categoryNameController.text);
          },
          child: const Text('Create Category'),
        ),
      ],
    );
  }
}
