import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OutlineButtonLogin extends StatelessWidget {
  const OutlineButtonLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.black.withOpacity(0.1),
              side: const BorderSide(
                color: Colors.white,
                width: 1,
                style: BorderStyle.solid,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              shadowColor: Colors.grey.withOpacity(1),
              elevation: 2,
            ),
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 8,
              ),
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class OutlineButtonGetStart extends StatelessWidget {
  const OutlineButtonGetStart({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.white.withOpacity(1),
              side: const BorderSide(
                color: Colors.black,
                width: 1,
                style: BorderStyle.solid,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              shadowColor: Colors.grey.withOpacity(1),
              elevation: 2,
            ),
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Text(
                'Get Start',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
