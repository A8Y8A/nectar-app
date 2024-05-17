import 'package:flutter/material.dart';

class BeveragesCard extends StatelessWidget {
  const BeveragesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.fromLTRB(9, 0, 10.5, 0),
        padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFE2E2E2)),
          borderRadius: BorderRadius.circular(18),
        ),
        child: Center(
          child: Stack(clipBehavior: Clip.none, children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 1, 1.3),
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/7.png',
                          ),
                        ),
                      ),
                      child: Container(
                        // padding: EdgeInsets.only(left: 50),
                        width: 37.7,
                        height: 69.9,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 7, 0, 0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(),
                        ),
                        child: const Text(
                          'Diet Coke',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            height: 1.1,
                            letterSpacing: 0.1,
                            color: Color(0xFF181725),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        //margin: EdgeInsets.fromLTRB(0, 0, 10.2, 10.9),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 6, 39, 0),
                              decoration: BoxDecoration(
                                border: Border(),
                              ),
                              child: Text(
                                '355ml,',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  height: 1.3,
                                  color: Color(0xFF7C7C7C),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 1, 39, 0),
                              decoration: BoxDecoration(
                                border: Border(),
                              ),
                              child: Text(
                                'price',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  height: 1.3,
                                  color: Color(0xFF7C7C7C),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 12, 39, 0),
                              decoration: BoxDecoration(
                                border: Border(),
                              ),
                              child: Text(
                                '\$1.99',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  height: 1,
                                  letterSpacing: 0.1,
                                  color: Color(0xFF181725),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 30, 20, 0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF53B175),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Container(
                              width: 40,
                              height: 40,
                              //padding: EdgeInsets.fromLTRB(14.3, 14.3, 14.3, 14.3),
                              child: SizedBox(
                                width: 17,
                                height: 17,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ])
          ]),
        ));
  }
}
