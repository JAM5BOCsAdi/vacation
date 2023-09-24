import 'package:flutter/material.dart';
import 'package:vacation/constants/const_colors.dart';
import 'package:vacation/constants/const_texts.dart';
import 'package:vacation/screens/home_screen/components/filter_button.dart';
import 'package:vacation/screens/home_screen/components/profile_bar.dart';
import 'package:vacation/widgets/base_stateless_widget.dart';

import '../../constants/const_images.dart';
import '../../widgets/sections_title_widget.dart';
import 'components/custom_search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: const BaseStatelessWidget(
        color: kDarkerWhite1,
        padding: EdgeInsets.only(
          left: 25,
          top: 60,
          right: 25,
          bottom: 21,
        ),
        child: Column(
          children: [
            ProfileBar(
              img: kProfileImg,
              icon: kMapImg,
              bellIcon: kBellImg,
            ),
            SizedBox(height: 24),
            CustomSearchBar(),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FilterButton(text: kAirport, image: kAirportImg),
                FilterButton(text: kTaxi, image: kTaxiImg),
                FilterButton(text: kHotel, image: kHotelImg),
                FilterButton(text: kMore, image: kMoreImg),
              ],
            ),
            SizedBox(height: 24),
            SectionsTitleWidget(title: 'Frequently visited', dotsIndicator: true, dotsCount: 3),
          ],
        ),
      ),
    );
  }
}
