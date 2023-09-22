import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vacation/constants/const_colors.dart';
import 'package:vacation/constants/const_texts.dart';

import '../constants/const_styles.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    double height = mediaQuery.height;
    double width = mediaQuery.width;
    print('Height: $height');
    print('Width: $width');

    return Scaffold(
      body: SafeArea(
        top: false,
        child: Container(
          padding: const EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 34),
          color: kWhiteColor,
          height: height,
          width: width,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 32),
                child: SizedBox(
                  width: width,
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Image.asset(
                      'assets/images/subtract.png',
                      height: 490,
                    ),
                  ),
                ),
              ),
              Text(
                kOnBoardingTitle,
                style: GoogleFonts.plusJakartaSans(
                  textStyle: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    height: 1.3333333333,
                    letterSpacing: 0.12,
                    color: kBlackColor,
                  ),
                ),
              ),
              Text(
                kOnBoardingDescription,
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  height: 1.5714285714,
                  letterSpacing: 0.07,
                  color: kGreyColor,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text(kOnBoardingButton),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 0, right: 4, left: 0, bottom: 0),
                    child: Text(
                      kOnBoardingDHA,
                      style: textStyle(kBlackColor),
                    ),
                  ),
                  Text(
                    kOnBoardingRegister,
                    style: textStyle(kGreenColor),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
