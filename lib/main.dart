import 'package:fashion_app/core/constants/colors.dart';
import 'package:fashion_app/features/home/presentation/views/home_view.dart';
import 'package:fashion_app/features/login/presentation/views/login_view.dart';
import 'package:fashion_app/features/sign_up/presentation/views/sign_up_view.dart';
import 'package:fashion_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: splashViewRoute,
      routes: {
        splashViewRoute: (context) => SplashView(),
        homeViewRoute: (context) => HomeView(),
        loginViewRoute: (context) => LoginView(),
        signUpViewRoute: (context) => SignUpView()
      },
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        colorScheme: ColorScheme.fromSeed(seedColor: redButton),
        useMaterial3: true,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: redButton,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
    );
  }
}

const String splashViewRoute = '/';
const String homeViewRoute = '/home';
const String loginViewRoute = '/login';
const String signUpViewRoute = '/sign_up';
