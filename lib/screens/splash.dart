import 'package:fashion_app/gen/assets.gen.dart';
import 'package:fashion_app/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Assets.images.splashBack.image(
          fit: BoxFit.cover,
          height: double.infinity,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 40,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15,),
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
              Padding(
                padding: EdgeInsets.symmetric(vertical: 40),
                child: Text(
                  "Let's start to browse and purchase the latest fashion brands and styles.",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: AutofillHints.creditCardExpirationMonth,
                    fontWeight: FontWeight.w700
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15,),
                child: Column(
                  children: [
                    OutlineButtonGetStart(),
                    SizedBox(height: 20,),
                    OutlineButtonLogin(),
                  ],
                ),
              ),
            
            ],
          ),
        )
      ],
    );
  }
}
