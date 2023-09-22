import 'package:flutter/material.dart';
import 'package:vacation/constants/const_colors.dart';

class VacationDetailsScreen extends StatelessWidget {
  const VacationDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    double height = mediaQuery.height;
    double width = mediaQuery.width;

    double baseWidth = 375;

    double fem = width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      body: SafeArea(
        child: Container(
          color: kDarkerWhite,
          height: height,
          width: width,
        ),
      ),
    );
  }
}
