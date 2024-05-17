import 'package:flutter/material.dart';
import 'package:nectar_app/presentation/component/bottomnavbar.dart';
import 'package:nectar_app/utils/constant.dart';

class OrderAccept extends StatelessWidget {
  const OrderAccept({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          margin: EdgeInsets.only(top: 110, right: 30, left: 20),
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/images/9.png',
            width: 300,
            height: 300,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          width: 300,
          child: Text(
            "Your Order has been accepted",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'poppins',
                fontSize: 28,
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          width: 320,
          child: Text(
            "Your items has been placcd and is on it’s way to being processed",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'poppins',
              fontSize: 16,
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          width: 350,
          margin: const EdgeInsets.only(top: 40, bottom: 5, left: 20),
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
                'Track Order',
                style: TextStyle(
                    color: Colors.white, fontSize: 18, fontFamily: 'poppins'),
              ),
            ),
            onPressed: () {},
          ),
        ),
        Container(
          width: 350,
          margin: const EdgeInsets.only(top: 5, bottom: 10, left: 20),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                )),
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.center,
              child: Text(
                'Back To Home',
                style: TextStyle(
                    color: Colors.black, fontSize: 18, fontFamily: 'poppins'),
              ),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BottomNavBar()));
            },
          ),
        )
      ]),
    );
  }
}
