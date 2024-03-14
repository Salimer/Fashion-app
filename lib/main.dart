import 'package:fashion_app/core/constants/colors.dart';
import 'package:fashion_app/core/constants/routes.dart';
import 'package:fashion_app/features/home/presentation/views/home_view.dart';
import 'package:fashion_app/features/login/presentation/views/login_view.dart';
import 'package:fashion_app/features/product_details/presentation/views/product_details_view.dart';
import 'package:fashion_app/features/sign_up/presentation/views/sign_up_view.dart';
import 'package:fashion_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(child: MyApp())
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: productDetailsViewRoute,
      routes: {
        splashViewRoute: (context) => const SplashView(),
        homeViewRoute: (context) => const HomeView(),
        loginViewRoute: (context) => const LoginView(),
        signUpViewRoute: (context) => const SignUpView(),
        productDetailsViewRoute: (context) => const ProductDetailsView()
      },
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
        ),
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


