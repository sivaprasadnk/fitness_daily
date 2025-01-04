import 'package:flutter/material.dart';

extension ContextExtensions on BuildContext {
  Size get screenSize => MediaQuery.of(this).size;
  ThemeData get theme => Theme.of(this);
  Color get primaryColor => theme.primaryColor;
  double get screenWidth => screenSize.width;
  double get screenHeight => screenSize.height;
}
