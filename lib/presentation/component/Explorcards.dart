import 'package:flutter/material.dart';

class ExplorCard extends StatelessWidget {
  ExplorCard(
      {super.key,
      required this.image,
      required this.color,
      required this.text,
      required this.borderColor});
  final String image;
  final String text;
  final Color color;
  final Color borderColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.fromLTRB(7, 0, 0, 7),
      decoration: BoxDecoration(
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(18),
        color: color,
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 27.7, 0, 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 27.5),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      image,
                    ),
                  ),
                ),
                child: Container(
                  width: 111.4,
                  height: 74.9,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0.9, 0, 0, 0),
              decoration: BoxDecoration(
                border: Border(),
              ),
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  height: 1.4,
                  letterSpacing: 0.1,
                  color: Color(0xFF181725),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
