import 'package:finance_app/ui_components/common_widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class CreateCategorryAlertDialogContent extends StatelessWidget {
  const CreateCategorryAlertDialogContent({
    super.key,
    required this.categoryNameController,
    required this.amountOfCategoryController,
    required this.amountOfCategories, 
    required this.categories,
    required this.index,
  });

  final TextEditingController categoryNameController;
  final TextEditingController amountOfCategoryController;
    final List<String> amountOfCategories ;

  final List<String> categories;
  final int index;
  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.4,
      child: Column(
        children: [
          Text(
            'number of category $index',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: CustomTextField(
              hintText: 'Category Name',
              controller: categoryNameController,
            ),
          ),
          CustomTextField(
              hintText: 'Amount', controller: amountOfCategoryController),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {},
                child: Text('Cancel'),
              ),
              ElevatedButton(
                onPressed: () {
                  categories.add(categoryNameController.text);
                  categoryNameController.clear();
                  amountOfCategoryController.clear();
                  amountOfCategories.add(amountOfCategoryController.text);
                  Navigator.of(context).pop();
                },
                child: const Text('Create Category'),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
