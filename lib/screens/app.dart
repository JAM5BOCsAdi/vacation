import 'package:flutter/material.dart';
import 'package:vacation/screens/home_screen/home_screen.dart';
import 'package:vacation/screens/onboarding_screen.dart';
import 'package:vacation/screens/vacation_details_screen.dart';

import '../constants/const_routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vacation Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const OnBoardingScreen(),
      initialRoute: kHomeScreen,
      routes: {
        kOnBoardingScreen: (context) => const OnBoardingScreen(),
        kHomeScreen: (context) => const HomeScreen(),
        kVacationDetailsScreen: (context) => const VacationDetailsScreen(),
      },
    );
  }
}
