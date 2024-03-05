import 'package:fashion_app/gen/assets.gen.dart';
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
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  'Brands and new styles',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 50,
                  ),
                ),
                const Text(
                  "Let's start to browse and purchase the latest fashion brands and styles.",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: AutofillHints.creditCardExpirationMonth,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Get Start'),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    maximumSize: MaterialStateProperty.all(Size(200, 600)),
                  ),
                  onPressed: () {},
                  child: Text('Login'),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
