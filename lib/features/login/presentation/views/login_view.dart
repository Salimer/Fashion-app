import 'package:fashion_app/core/constants/colors.dart';
import 'package:fashion_app/features/login/presentation/widgets/login_text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:fashion_app/gen/assets.gen.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    const double columnGap = 15;
    return Scaffold(
      body: Stack(
        children: [
          Assets.images.loginBack.image(
            fit: BoxFit.cover,
            height: double.infinity,
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Column(
                    children: [
                      Text(
                        'Login',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(height: columnGap),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Welcome back! It's good to see you again",
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: columnGap),
                      LoginTextFieldWidget(
                        inputPlaceholder: 'Emailll',
                        firstIcon: Icon(
                          Icons.mail,
                          color: Colors.white,
                          size: 30,
                        ),
                        secondIcon: null,
                      ),
                      SizedBox(height: columnGap),
                      LoginTextFieldWidget(
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
                      
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all(EdgeInsets.zero),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(300, 60)),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(height: columnGap),
                    ],
                  ),
                ),
                Divider(thickness: 2, color: Colors.white),
                Container(
                  child: Column(
                    children: [
                      Text(
                        'Or continue with',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: columnGap),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(40)),
                            child: Assets.images.google.image(height: 60),
                          ),
                          SizedBox(width: columnGap),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(40)),
                            child: Assets.images.apple.image(height: 60),
                          ),
                        ],
                      ),
                      SizedBox(height: columnGap),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Not a memeber?',
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
                              'Register now',
                              style: TextStyle(
                                color: redButton,
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ],
                      ),
                          SizedBox(height: columnGap),
                          ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(220, 60)),
                        child: Text(
                          'Go to Home',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
