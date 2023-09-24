import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:vacation/constants/const_colors.dart';
import 'package:vacation/constants/const_texts.dart';
import 'package:vacation/screens/home_screen/components/filter_button.dart';
import 'package:vacation/screens/home_screen/components/profile_bar.dart';
import 'package:vacation/widgets/base_stateless_widget.dart';

import '../../constants/const_images.dart';
import '../../widgets/sections_title_widget.dart';
import 'components/custom_search_bar.dart';
import 'components/horizontal_page_view.dart';

class HomeScreen extends HookWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final currentIndex = useState(0);

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: BaseStatelessWidget(
        color: kDarkerWhite1,
        padding: const EdgeInsets.only(
          left: 25,
          top: 60,
          right: 25,
          bottom: 21,
        ),
        child: Column(
          children: [
            const ProfileBar(
              img: kProfileImg,
              icon: kMapImg,
              bellIcon: kBellImg,
            ),
            const SizedBox(height: 24),
            const CustomSearchBar(),
            const SizedBox(height: 24),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FilterButton(text: kAirport, image: kAirportImg),
                FilterButton(text: kTaxi, image: kTaxiImg),
                FilterButton(text: kHotel, image: kHotelImg),
                FilterButton(text: kMore, image: kMoreImg),
                // Heart icons: IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
              ],
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
              child: SectionsTitleWidget(
                title: 'Frequently visited',
                dotsIndicator: true,
                dotsCount: frequentlyVisitedList.length ~/ 2,
                currentIndexPosition: currentIndex.value,
              ),
            ),
            HorizontalPageView(
              onPageChanged: (index) {
                currentIndex.value = index;
              },
            ),
          ],
        ),
      ),
    );
  }
}
