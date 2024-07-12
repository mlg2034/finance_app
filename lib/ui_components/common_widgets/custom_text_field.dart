import 'package:finance_app/ui_components/ui_kit.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final String? errorMessage;
  final TextInputType? keyBoardType;
  final String? label;
  final int? maxLines;
  const CustomTextField({
    this.hintText = '',
    required this.controller,
    this.errorMessage = '',
    this.keyBoardType,
    this.label,
    this.maxLines,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      controller: controller,
      cursorColor: AppColors.primaryColor,
      decoration: InputDecoration(
        filled: true,
        labelText: label,
        labelStyle: AppTextTheme.bodyText3.copyWith(
          color: AppColors.secondaryTextColor,
        ),
        fillColor: AppColors.lightGrey,
        error: Text(errorMessage!),
        hintText: hintText,
        hintStyle: AppTextTheme.bodyText3.copyWith(
          color: AppColors.secondaryTextColor,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
