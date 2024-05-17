import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nectar_app/presentation/component/bottomnavbar.dart';
import 'package:nectar_app/utils/constant.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          fit: BoxFit.fill,
          "assets/images/onboarding.jpg",
          width: window.physicalSize.width,
          height: window.physicalSize.height,
        ),
        SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/logo.png",
                width: 50,
                height: 50,
              ),
              SizedBox(
                width: 275,
                child: Text(
                  "Welcome to our store",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'poppins',
                      fontSize: 48,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                "Ger your groceries in as fast as one hour",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'poppins',
                  fontSize: 16,
                ),
              ),
              Container(
                width: 300,
                margin: const EdgeInsets.only(top: 40, bottom: 70),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      )),
                  child: Container(
                    padding: EdgeInsets.all(15),
                    alignment: Alignment.center,
                    child: const Text(
                      'Get Started',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'poppins'),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BottomNavBar()));
                  },
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
