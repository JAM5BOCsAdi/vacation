import 'package:flutter/material.dart';
import 'package:vacation/screens/home_screen.dart';
import 'package:vacation/screens/onboarding_screen.dart';
import 'package:vacation/screens/vacation_details_screen.dart';

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
      initialRoute: '/onboarding_screen',
      routes: {
        '/onboarding_screen': (context) => const OnBoardingScreen(),
        '/home_screen': (context) => const HomeScreen(),
        '/vacation_details_screen': (context) => const VacationDetailsScreen(),
      },
    );
  }
}
