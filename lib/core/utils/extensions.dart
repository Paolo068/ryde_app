import 'package:flutter/material.dart';

extension MediaQueryExtension on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
}

extension TextThemeExtension on BuildContext {
  TextTheme get text => Theme.of(this).textTheme;
}

extension NavigatorExtension on BuildContext {
  void pop<T extends Object?>([T? result]) => Navigator.of(this).pop();
}
