import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/const_colors.dart';
import '../../../constants/const_images.dart';
import '../../../constants/const_texts.dart';

class CustomSearchBar extends HookWidget {
  const CustomSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = useTextEditingController();
    return SizedBox(
      height: 52,
      width: double.maxFinite,
      child: SearchBar(
        controller: _controller,
        padding: MaterialStateProperty.all(const EdgeInsets.fromLTRB(0, 0, 0, 0)),
        leading: const Padding(
          padding: EdgeInsets.fromLTRB(16, 0, 8, 0),
          child: Icon(Icons.search, color: kSearchColor),
        ),
        trailing: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
            child: Container(
              height: 18,
              width: 1,
              color: kSearchColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              icon: Image.asset(kFilterImg),
            ),
          ),
        ],
        hintText: kSearch,
        hintStyle: MaterialStateProperty.all(TextStyle(
          color: kSearchColor,
          fontSize: 16,
          fontWeight: FontWeight.w500,
          height: 0.09,
          letterSpacing: 0.08,
          fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
        )),
        backgroundColor: MaterialStateProperty.all(kDarkerWhite2),
        elevation: MaterialStateProperty.all(0),
        side: MaterialStateProperty.all(const BorderSide(color: kGreyColor)),
      ),
    );
  }
}
