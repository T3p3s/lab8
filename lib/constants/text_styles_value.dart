import 'package:flutter/material.dart';
import 'package:lab8/constants/colors.dart';

class AppTextStyles {
  static final TextStyle px12blue = TextStyle(
    fontFamily: "Montsterrat",
    fontWeight: FontWeight.bold,
    color: AppColors.secondary,
    fontSize: 12,
  );

  static final TextStyle superSmall = TextStyle(
    fontFamily: "Montsterrat",
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    color: AppColors.LightGreyColor,
    fontSize: 11,
  );

  static final TextStyle px10blue = TextStyle(
    fontFamily: "Montsterrat",
    fontWeight: FontWeight.w400,
    color: AppColors.Azure,
    fontSize: 10,
  );
}
