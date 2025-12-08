import 'package:flutter/material.dart';

class Paddings {
  static double reponsiveHeight(BuildContext context, double value) {
    final designHeight = MediaQuery.of(context).size.height;
    return (value / 812) * designHeight;
  }
}
