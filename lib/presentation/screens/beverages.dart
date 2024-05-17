import 'package:flutter/material.dart';
import 'package:nectar_app/presentation/component/beveragescards.dart';
import 'package:nectar_app/presentation/component/customButton.dart';

class Beverages extends StatelessWidget {
  const Beverages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Beverages',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            GestureDetector(
              onTap: () {
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
                              top: 10, left: 30, right: 20),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Add',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.close)),
                                  ]),
                              const SizedBox(
                                height: 10,
                              ),
                              Divider(
                                thickness: 1,
                                color: Colors.grey,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              TextField(
                                decoration: InputDecoration(hintText: 'Name'),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextField(
                                decoration:
                                    InputDecoration(hintText: 'Description'),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextField(
                                decoration: InputDecoration(hintText: 'Price'),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextField(
                                decoration: InputDecoration(hintText: 'Image'),
                              ),
                              CustumButtom(
                                text: 'Add Item',
                                press: () {},
                              )
                            ],
                          ),
                        ));
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
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
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // number of items in each row
            mainAxisSpacing: 10, // spacing between rows
            crossAxisSpacing: 10, // spacing between columns
          ),
          //padding: EdgeInsets.all(8.0), // padding around the grid
          itemCount: 8, // total number of items
          itemBuilder: (context, index) {
            return Container(
                margin: EdgeInsets.only(left: 7, right: 7),
                child: BeveragesCard());
          },
        ));
  }
}
