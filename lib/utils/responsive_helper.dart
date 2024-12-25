
import 'package:flutter/material.dart';

class ResponsiveHelper {
  static double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
  static double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

  static double getProportionateScreenHeight(BuildContext context, double inputHeight) {
    double screenHeight = MediaQuery.of(context).size.height;
    return (inputHeight / 812.0) * screenHeight;
  }

  static double getProportionateScreenWidth(BuildContext context, double inputWidth) {
    double screenWidth = MediaQuery.of(context).size.width;
    return (inputWidth / 375.0) * screenWidth;
  }

  static double defaultPadding(BuildContext context) => 
      getProportionateScreenWidth(context, 16);

  static double getFontSize(BuildContext context, double baseSize) =>
      getProportionateScreenWidth(context, baseSize);

  static double getIconSize(BuildContext context, double baseSize) =>
      getProportionateScreenWidth(context, baseSize);

  static double getHeight(BuildContext context, double baseHeight) =>
      getProportionateScreenHeight(context, baseHeight);

  static double getWidth(BuildContext context, double baseWidth) =>
      getProportionateScreenWidth(context, baseWidth);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 600 && 
      MediaQuery.of(context).size.width < 1024;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1024;
}