import 'package:flutter/material.dart';
import 'package:nectar_app/presentation/component/customButton.dart';
import 'package:nectar_app/presentation/screens/orderaccept.dart';
import 'package:nectar_app/utils/constant.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'My Cart',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          automaticallyImplyLeading: false,
        ),
        body: Stack(
          children: [
            ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    //margin: EdgeInsets.fromLTRB(0, 16.1, 0.7, 16.1),
                                    height: 64.7,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            'assets/images/8.png',
                                          ),
                                        ),
                                      ),
                                      child: Container(
                                        width: 70.4,
                                        height: 64.7,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(0, 0, 20, 3.4),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 0, 0, 0),
                                              width: 210,
                                              decoration: BoxDecoration(
                                                border: Border(),
                                              ),
                                              child: Text(
                                                'Bell Pepper Red',
                                                style: TextStyle(
                                                  fontFamily: 'poppins',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 16,
                                                  height: 1.1,
                                                  letterSpacing: 0.1,
                                                  color: Color(0xFF181725),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 0, 0, 4),
                                              child: SizedBox(
                                                  width: 14.2,
                                                  height: 14,
                                                  child: Icon(Icons.close)),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(0, 0, 0, 10.4),
                                        child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              border: Border(),
                                            ),
                                            child: Text(
                                              '1kg, Price',
                                              style: TextStyle(
                                                fontFamily: 'poppins',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                height: 1.3,
                                                color: Color(0xFF7C7C7C),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(0, 0, 1.9, 0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 1.4, 17.4, 0),
                                                  width: 45.7,
                                                  height: 45.7,
                                                  // padding: EdgeInsets.fromLTRB(
                                                  //   14.3, 21.4, 14.3, 21.4),
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color:
                                                            Color(0xFFF0F0F0)),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            17),
                                                  ),
                                                  child: IconButton(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                        Icons.minimize,
                                                      )),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 19.3, 16.4, 9.7),
                                                  decoration: BoxDecoration(
                                                    border: Border(),
                                                  ),
                                                  child: Text(
                                                    '1',
                                                    style: TextStyle(
                                                      fontFamily: 'poppins',
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 16,
                                                      height: 1.1,
                                                      letterSpacing: 0.1,
                                                      color: Color(0xFF181725),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 1.4, 17.4, 0),
                                                  width: 45.7,
                                                  height: 45.7,
                                                  // padding: EdgeInsets.fromLTRB(
                                                  //   14.3, 21.4, 14.3, 21.4),
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color:
                                                            Color(0xFFF0F0F0)),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            17),
                                                  ),
                                                  child: IconButton(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                        Icons.add,
                                                        color: primaryColor,
                                                      )),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 15, 10, 5),
                                              decoration: BoxDecoration(
                                                border: Border(),
                                              ),
                                              child: Text(
                                                '\$4.99',
                                                style: TextStyle(
                                                  fontFamily: 'poppins',
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 18,
                                                  height: 1.5,
                                                  letterSpacing: 0.1,
                                                  color: Color(0xFF181725),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ])),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  );
                }),
            Positioned(
                top: 570,
                left: 25,
                child: CustumButtom(
                    text: 'Go to Checkout',
                    press: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (_) => Container(
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15)),
                                  color: Color.fromRGBO(242, 243, 242, 1),
                                ),
                                height: 900,
                                width: double.infinity,
                                padding: const EdgeInsets.only(
                                    top: 10, left: 10, right: 20),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Checkout',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold)),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.close))
                                      ],
                                    ),
                                    // const SizedBox(
                                    //   height: 10,
                                    // ),
                                    Divider(
                                      thickness: 1,
                                      color: Colors.grey,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Text('Delivery'),
                                        SizedBox(
                                          width: 165,
                                        ),
                                        Text(
                                          'Select Method',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        IconButton(
                                          icon: Icon(
                                            Icons.arrow_forward_ios_rounded,
                                            size: 20,
                                          ),
                                          onPressed: () {},
                                        )
                                      ],
                                    ),
                                    Divider(
                                      thickness: 1,
                                      color: Colors.grey,
                                    ),
                                    Row(
                                      children: [
                                        Text('Pament'),
                                        SizedBox(
                                          width: 240,
                                        ),
                                        Icon(
                                          Icons.paypal,
                                          color: Colors.blue,
                                        ),
                                        IconButton(
                                          icon: Icon(
                                            Icons.arrow_forward_ios_rounded,
                                            size: 20,
                                          ),
                                          onPressed: () {},
                                        )
                                      ],
                                    ),
                                    Divider(
                                      thickness: 1,
                                      color: Colors.grey,
                                    ),
                                    Row(
                                      children: [
                                        Text('Promo Code'),
                                        SizedBox(
                                          width: 145,
                                        ),
                                        Text(
                                          'pick discount',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        IconButton(
                                          icon: Icon(
                                            Icons.arrow_forward_ios_rounded,
                                            size: 20,
                                          ),
                                          onPressed: () {},
                                        )
                                      ],
                                    ),
                                    Divider(
                                      thickness: 1,
                                      color: Colors.grey,
                                    ),
                                    Row(
                                      children: [
                                        Text('Total Cost'),
                                        SizedBox(
                                          width: 200,
                                        ),
                                        Text(
                                          '\$13.97',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        IconButton(
                                          icon: Icon(
                                            Icons.arrow_forward_ios_rounded,
                                            size: 20,
                                          ),
                                          onPressed: () {},
                                        )
                                      ],
                                    ),
                                    Divider(
                                      thickness: 1,
                                      color: Colors.grey,
                                    ),
                                    CustumButtom(
                                      text: 'Place Order',
                                      press: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    OrderAccept()));
                                      },
                                    )
                                  ],
                                ),
                              ));
                    }))
          ],
        ));
  }
}
