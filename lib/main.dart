import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vacation/screens/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  //  SystemChrome.setPreferredOrientations(
  //   [
  //     DeviceOrientation.portraitUp,
  //     // DeviceOrientation.portraitDown,
  //   ],
  // );
  runApp(const App());
}
