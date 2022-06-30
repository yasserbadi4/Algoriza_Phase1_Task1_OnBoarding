import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:internship_task1/components/themes.dart';
import 'package:internship_task1/layouts/login_screen.dart';
import 'package:internship_task1/layouts/onboarding_screen.dart';
import 'package:internship_task1/layouts/signup_screen.dart';
import 'package:internship_task1/layouts/test.dart';

void main() {
  runApp(const MyApp());

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
//theme: myLightTheme,
        home: const OnBoarding(),
        // initialRoute: "/",
        // routes: {
        //   "/": ((context) => const OnBoarding()),
        //   "/signup_screen": ((context) => const SignUpScreen()),
        //   "/login_screen": ((context) => const LoginScreen()),
        //
        // }
        );
  }
}
