
import 'package:finance_app/ui_components/ui_kit.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {

    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Text(title , style: AppTextTheme.headline1,),
    );
  }
  
  @override
  Size get preferredSize =>const Size.fromHeight(kTextTabBarHeight);
}
