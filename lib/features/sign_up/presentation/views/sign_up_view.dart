import 'package:fashion_app/core/constants/colors.dart';
import 'package:fashion_app/core/widgets/form_text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:fashion_app/gen/assets.gen.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    const double columnGap = 15;
    return Scaffold(
        body: Stack(
      children: [
        Assets.images.signUpBack.image(
          fit: BoxFit.cover,
          height: double.infinity,
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Text(
                  'Create account',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w600),
                ),
              ),
              FormTextFieldWidget(
                inputPlaceholder: 'Email',
                firstIcon: Icon(
                  Icons.mail,
                  color: Colors.white,
                  size: 30,
                ),
                secondIcon: null,
              ),
              SizedBox(height: columnGap),
              FormTextFieldWidget(
                inputPlaceholder: 'Password',
                firstIcon: Icon(
                  Icons.lock,
                  color: Colors.white,
                  size: 30,
                ),
                secondIcon: Icon(
                  Icons.visibility_off,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              SizedBox(height: columnGap),
              FormTextFieldWidget(
                inputPlaceholder: 'Confirm password',
                firstIcon: Icon(
                  Icons.lock,
                  color: Colors.white,
                  size: 30,
                ),
                secondIcon: Icon(
                  Icons.visibility_off,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              SizedBox(height: columnGap),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(minimumSize: Size(300, 60)),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(width: 4),
                  TextButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Log in',
                      style: TextStyle(
                        color: redButton,
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    ));
  }
}
