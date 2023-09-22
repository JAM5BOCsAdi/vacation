import 'package:flutter/material.dart';
import 'package:vacation/constants/const_colors.dart';
import 'package:vacation/widgets/base_stateless_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    double height = mediaQuery.height;
    double width = mediaQuery.width;

    return const BaseStatelessWidget(
      color: kDarkerWhite,
      child: Column(
        children: [
          Text('Home Screen'),
        ],
      ),
    );
  }
}
