import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/const_colors.dart';

@immutable
class ProfileBar extends StatelessWidget {
  final String img;
  final String icon;
  final String bellIcon;
  const ProfileBar({
    Key? key,
    required this.img,
    required this.icon,
    required this.bellIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final mediaQuery = MediaQuery.of(context).size;
    // double height = mediaQuery.height;
    // double width = mediaQuery.width;
    return SizedBox(
      height: 46,
      width: double.maxFinite,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 0, bottom: 0, left: 0, right: 15),
            child: ClipOval(
              child: Image.asset(
                img,
                height: 40,
                width: 40,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hi, Andy',
                style: GoogleFonts.plusJakartaSans(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  height: 1.44,
                  letterSpacing: 0.09,
                  color: kBlackColor,
                ),
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 0, left: 0, bottom: 0, right: 6.67),
                    child: Image.asset(
                      icon,
                      width: 16,
                      height: 16,
                    ),
                  ),
                  const Text('Netherlands'),
                ],
              ),
            ],
          ),
          const Spacer(),
          IconButton(
            iconSize: 46,
            padding: EdgeInsets.zero,
            onPressed: () {},
            icon: Image.asset(
              bellIcon,
              height: 46,
              width: 46,
            ),
          ),
        ],
      ),
    );
  }
}
