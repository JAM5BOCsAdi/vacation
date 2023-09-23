import 'package:flutter/material.dart';
import 'package:vacation/constants/const_colors.dart';
import 'package:vacation/widgets/base_stateless_widget.dart';

class VacationDetailsScreen extends StatelessWidget {
  const VacationDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final mediaQuery = MediaQuery.of(context).size;
    // double height = mediaQuery.height;
    // double width = mediaQuery.width;

    return const BaseStatelessWidget(
      color: kDarkerWhite1,
      child: Column(
        children: [
          Text('Vacation Details Screen'),
        ],
      ),
    );
  }
}
