import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:nectar_app/presentation/screens/onboarding.dart';
import 'package:nectar_app/utils/constant.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: ListView(
        children: [
          const SizedBox(
            height: 60,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Image.asset(
                    "assets/images/splash.png",
                    height: 250,
                    width: 300,
                  ),
                  const Positioned(
                      top: 140,
                      left: 70,
                      child: SizedBox(
                        width: 210,
                        child: Text("o n l i n e    g r o c e r i e t",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'poppins',
                              fontSize: 14,
                              color: Colors.white,
                              letterSpacing: .2,
                            )),
                      )),
                ],
              )
            ],
          ),
        ],
      ),
      backgroundColor: primaryColor,
      nextScreen: const OnBoarding(),
      splashIconSize: 400,
      duration: 1000,
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}
