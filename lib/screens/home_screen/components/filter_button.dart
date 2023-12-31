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
    return Material(
      child: InkWell(
        onTap: () {},
        child: SizedBox(
          width: 71,
          height: 97,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 11),
                child: Container(
                  height: 64,
                  width: 64,
                  decoration: const BoxDecoration(
                    color: kDarkerWhite2,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
