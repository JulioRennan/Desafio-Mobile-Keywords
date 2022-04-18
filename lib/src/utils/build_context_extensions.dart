import 'package:desafio_keyworks_mobile/src/theme/app_colors.dart';
import 'package:flutter/material.dart';

extension ThemeApp on BuildContext {
  Color get primaryColor => AppColors.primaryColor;
  Color get secondaryColor => AppColors.secondaryColor;
  Color get tertiaryColor => AppColors.tertiaryColor;
  Color get lightColor => AppColors.lightColor;
  Color get lightColorSecondary => AppColors.lightColorSecondary;
  Color get alternativePrimaryColor => AppColors.alternativePrimaryColor;

  TextTheme get textTheme => Theme.of(this).textTheme;

  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
}

extension StylesApp on TextStyle? {
  TextStyle? withColor(Color color) => this?.copyWith(color: color);
}
