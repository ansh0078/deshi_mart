import 'package:desh_mart/configs/Colors.dart';
import 'package:flutter/material.dart';

var lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    background: backgroundColor,
    primary: primaryColor,
    onBackground: onBackgroundColor,
    primaryContainer: primaryContainerColor,
    onPrimaryContainer: onPrimaryContainerColor,
  ),
  textTheme: TextTheme(
    headlineMedium: TextStyle(
      fontFamily: "Popins",
      fontSize: 25,
      fontWeight: FontWeight.w500,
      color: onBackgroundColor,
    ),
    headlineSmall: TextStyle(
      fontFamily: "Popins",
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: onBackgroundColor,
    ),
    bodyMedium: TextStyle(
      fontFamily: "Popins",
      fontSize: 15,
      fontWeight: FontWeight.w500,
      color: onBackgroundColor,
    ),
    bodySmall: TextStyle(
      fontFamily: "Popins",
      fontSize: 11,
      fontWeight: FontWeight.w500,
      color: onBackgroundColor,
    ),
    labelMedium: TextStyle(
      fontFamily: "Popins",
      fontSize: 10,
      fontWeight: FontWeight.w400,
      color: onPrimaryContainerColor,
    ),
  ),
);
var darkTheme = ThemeData(
  brightness: Brightness.dark,
);
