import 'package:finance_app/ui_components/ui_kit.dart';
import 'package:flutter/material.dart';

class AppButon extends StatelessWidget {
  final double? verticalPadding;
  final double? horizontalPadding;
  final VoidCallback? onTap;
  final Widget child;
  final bool showBorder;
  final Color backgoundColor;
  final Color borderColor;
  final bool isLoading;
  final double?height;
  final double?width;
  const AppButon({
    required this.child,
    this.showBorder = false,
    this.onTap,
    this.verticalPadding,
    this.horizontalPadding,
    this.backgoundColor = AppColors.secondary,
    this.borderColor = AppColors.accentColor,
    this.isLoading = false,
    this.height ,this.width,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width??double.infinity,
      height: height??MediaQuery.sizeOf(context).height*0.06,
      child: GestureDetector(
        onTap: isLoading ? () {} : onTap,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: backgoundColor,
            border: showBorder ? Border.all(color: borderColor, width: 1) : null,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: verticalPadding ?? 8, horizontal: 12),
            child: Center(
              child:
                  isLoading ? const CircularProgressIndicator.adaptive() : child,
            ),
          ),
        ),
      ),
    );
  }
}
