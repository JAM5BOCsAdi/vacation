import 'package:flutter/material.dart';

import '../../../constants/const_colors.dart';
import '../../../constants/const_images.dart';
import '../../../constants/const_texts.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      width: double.maxFinite,
      child: SearchBar(
        leading: const Padding(
          padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
          child: Icon(Icons.search),
        ),
        trailing: [
          IconButton(onPressed: () {}, icon: Image.asset(kFilterImg)),
        ],
        hintText: kSearch,
        hintStyle: MaterialStateProperty.all(const TextStyle(color: kGreyColor)),
        backgroundColor: MaterialStateProperty.all(kDarkerWhite2),
        elevation: MaterialStateProperty.all(0),
        side: MaterialStateProperty.all(const BorderSide(color: kGreyColor)),
      ),
    );
  }
}
