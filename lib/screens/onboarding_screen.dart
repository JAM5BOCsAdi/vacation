import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vacation/constants/const_colors.dart';
import 'package:vacation/constants/const_images.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    double height = mediaQuery.height;
    double width = mediaQuery.width;
    print('Height: $height');
    print('Width: $width');
    double baseWidth = 375;

    double fem = width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      body: SafeArea(
        top: false,
        child: Container(
          color: kOnBoardingBaseColor,
          height: height,
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 32 * fem),
                width: 375 * fem,
                height: 490 * fem,
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: Image.asset(
                    subtract,
                    width: 375,
                    height: 490,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(24 * fem, 0, 24 * fem, 0),
                width: width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(15.5 * fem, 0, 15.5 * fem, 33 * fem),
                      width: width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 9 * fem),
                              constraints: BoxConstraints(
                                maxWidth: 296 * fem,
                              ),
                              child: Text(
                                'We are here to make your holiday easier',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.plusJakartaSans(
                                  textStyle: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                    height: 1.3333333333 * ffem / fem,
                                    letterSpacing: 0.12 * fem,
                                    color: kOnBoardingTitleColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Center(
                            child: Container(
                              margin: EdgeInsets.fromLTRB(1 * fem, 0, 0, 0),
                              constraints: BoxConstraints(
                                maxWidth: 272 * fem,
                              ),
                              child: Text(
                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize: 14 * fem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.5714285714 * ffem / fem,
                                  letterSpacing: 0.07 * fem,
                                  color: kOnBoardingDescriptionColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 24 * fem),
                            width: width,
                            height: 58 * fem,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: kOnBoardingButtonColor,
                              ),
                              onPressed: () {
                                Navigator.of(context).pushNamed('/home_screen');
                              },
                              child: Center(
                                child: Text(
                                  'Get Started',
                                  style: GoogleFonts.plusJakartaSans(
                                    fontSize: 18 * fem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.4444444444 * ffem / fem,
                                    letterSpacing: 0.09 * fem,
                                    color: kDarkerWhite,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Center(
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 4 * fem, 0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
