import 'package:fashion_app/gen/assets.gen.dart';
import 'package:fashion_app/features/splash/presentation/widgets/splash_button_widget.dart';
import 'package:fashion_app/main.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Assets.images.splashBack.image(
            fit: BoxFit.cover,
            height: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 40,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: Text(
                    'Brands and new styles',
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 40,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 40),
                  child: Text(
                    "Let's start to browse and purchase the latest fashion brands and styles.",
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: AutofillHints.creditCardExpirationMonth,
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: Column(
                    children: [
                      const SplashButtonWidget(
                        text: 'Get Start',
                        borderColor: Colors.black,
                        backgroundColor: Colors.white,
                        textColor: Colors.black,
                        routeName: homeViewRoute,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SplashButtonWidget(
                        text: 'Login',
                        borderColor: Colors.white,
                        backgroundColor: Colors.black.withOpacity(0.2),
                        textColor: Colors.white,
                        routeName: loginViewRoute,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
