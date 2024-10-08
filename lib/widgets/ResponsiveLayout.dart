import 'package:flutter/material.dart';

class Responsive {
  static bool isMobile(BuildContext context) => MediaQuery.of(context).size.width < 850;
  static bool isTable(BuildContext context) => MediaQuery.of(context).size.width < 1100 && MediaQuery.of(context).size.width >= 1100;
  static bool isDesktop(BuildContext context) => MediaQuery.of(context).size.width >= 1100;

}
