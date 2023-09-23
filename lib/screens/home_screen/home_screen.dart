import 'package:flutter/material.dart';
import 'package:vacation/constants/const_colors.dart';
import 'package:vacation/screens/home_screen/components/profile_bar.dart';
import 'package:vacation/widgets/base_stateless_widget.dart';

import '../../constants/const_images.dart';
import 'components/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final mediaQuery = MediaQuery.of(context).size;
    // double height = mediaQuery.height;
    // double width = mediaQuery.width;

    return const BaseStatelessWidget(
      color: kDarkerWhite1,
      padding: EdgeInsets.only(
        left: 20,
        top: 60,
        right: 23,
        bottom: 21,
      ),
      child: Column(
        children: [
          ProfileBar(
            img: kProfile,
            icon: kMap,
            bellIcon: kBell,
          ),
          SizedBox(height: 24),
          CustomSearchBar(),
        ],
      ),
    );
  }
}
