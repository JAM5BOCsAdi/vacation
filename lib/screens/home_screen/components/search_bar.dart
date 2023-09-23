import 'package:flutter/material.dart';

import '../../../constants/const_colors.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kDarkerWhite2,
      height: 52,
      width: double.maxFinite,
    );
  }
}
