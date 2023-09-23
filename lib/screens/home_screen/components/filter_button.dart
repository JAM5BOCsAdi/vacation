import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vacation/constants/const_colors.dart';

@immutable
class FilterButton extends StatelessWidget {
  final String text;
  final String image;
  const FilterButton({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 71,
      height: 97,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 11),
            child: InkWell(
              onTap: () {},
              child: Container(
                height: 64,
                width: 64,
                color: kDarkerWhite2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(64),
                ),
                child: Image.asset(
                  image,
                  height: 32,
                  width: 32,
                ),
              ),
            ),
          ),
          Text(
            text,
            style: GoogleFonts.plusJakartaSans(
              color: kGreyColor,
              fontWeight: FontWeight.w500,
              fontSize: 14,
              height: 22, // Line height
              letterSpacing: 0.005, // 0.5% => 0.005 [5% = 5/100 = 0.05 => 0.5% = 5/1000 = 0.005]
            ),
          ),
        ],
      ),
    );
  }
}
