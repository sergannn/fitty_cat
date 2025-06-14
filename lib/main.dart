import 'package:fit/screens/auth.dart';
import 'package:fit/screens/charts.dart';
import 'package:fit/screens/survey.dart';
import 'package:fit/screens/board1.dart';
import 'package:fit/screens/board2.dart';
import 'package:fit/screens/board3.dart';
import 'package:fit/screens/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Named Routes Demo',
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const SplashScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/splash': (context) => const SplashScreen(),
        '/board1': (context) => const FirstScreen(),
        '/board2': (context) => const SecondScreen(),
        '/board3': (context) => const ThirdScreen(),
        '/auth': (context) => AuthScreen(),
        '/survey': (context) => SurveyScreen(),
        '/charts': (context) => ChartsScreen(),
      },
    );
  }
}
