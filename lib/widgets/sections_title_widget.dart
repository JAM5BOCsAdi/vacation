import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vacation/constants/const_colors.dart';
import 'package:vacation/constants/const_texts.dart';

@immutable
class SectionsTitleWidget extends StatelessWidget {
  final String title;
  final bool dotsIndicator;
  final int dotsCount;
  final int currentIndexPosition;
  final String? seeAllRoute;

  const SectionsTitleWidget({
    required this.title,
    this.dotsIndicator = false,
    this.dotsCount = 0,
    this.currentIndexPosition = 0,
    this.seeAllRoute,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: GoogleFonts.plusJakartaSans(
            color: kBlackColor,
            fontSize: 18,
            fontWeight: FontWeight.w700,
            height: 0.08,
            letterSpacing: 0.09,
          ),
        ),
        const Spacer(),
        dotsIndicator
            ? DotsIndicator(
                dotsCount: dotsCount,
                position: currentIndexPosition,
                decorator: DotsDecorator(
                  size: const Size(8, 8),
                  activeColor: kGreenColor,
                  activeSize: const Size(24, 8),
                  activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              )
            : TextButton(
                onPressed: () => Navigator.of(context).pushNamed(seeAllRoute!),
                child: Text(
                  kSeeAll,
                  style: GoogleFonts.plusJakartaSans(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    height: 1.57,
                    letterSpacing: 0.07,
                    color: kGreenColor,
                  ),
                ),
              ),
      ],
    );
  }
}
