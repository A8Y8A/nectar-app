import 'package:flutter/material.dart';

import '../../utils/constant.dart';

// ignore: must_be_immutable
class CustumButtom extends StatelessWidget {
  CustumButtom({super.key, required this.text, required this.press});
  final String text;
  void Function()? press;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      margin: const EdgeInsets.only(top: 20, bottom: 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            )),
        child: Container(
          padding: EdgeInsets.all(15),
          alignment: Alignment.center,
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontFamily: 'poppins'),
          ),
        ),
        onPressed: press,
      ),
    );
  }
}
