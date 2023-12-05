import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String title;
  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
    backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
    elevation: Theme.of(context).appBarTheme.elevation,
    centerTitle: Theme.of(context).appBarTheme.centerTitle,
    title: Text(title,
    style: Theme.of(context).appBarTheme.titleTextStyle,
    ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
