import 'package:flutter/cupertino.dart';

class StlBaseScreen extends StatelessWidget {
  const StlBaseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    final height = mediaQuery.height;
    final width = mediaQuery.width;

    return Container();
  }
}
