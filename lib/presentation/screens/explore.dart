import 'package:flutter/material.dart';
import 'package:nectar_app/presentation/component/Explorcards.dart';
import 'package:nectar_app/presentation/screens/beverages.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> category = [
      "assets/images/5.png",
      "assets/images/3.png",
      "assets/images/1.png",
      "assets/images/2.png",
      "assets/images/4.png",
      "assets/images/6.png",
      "assets/images/5.png",
      "assets/images/3.png",
    ];
    List<String> categoryText = [
      "Frash Fruits ",
      "Cooking Oil & Ghee",
      "Meat & Fish",
      "Bakery & Snacks",
      "Dairy & Eggs",
      "Beverages",
      "Frash Fruits ",
      "Cooking Oil & Ghee",
    ];
    List<Color> borderColor = [
      Color(0xB253B175),
      Color(0xB2F8A44C),
      Color(0xFFF7A593),
      Color(0xFFD3B0E0),
      Color(0xB253B175),
      Color(0xB2F8A44C),
      Color(0xFFF7A593),
      Color(0xFFD3B0E0),
    ];
    List<Color> color = [
      Color(0x1A53B175),
      Color(0x1AF8A44C),
      Color(0x40F7A593),
      Color(0x40D3B0E0),
      Color(0x1A53B175),
      Color(0x1AF8A44C),
      Color(0x40F7A593),
      Color(0x40D3B0E0),
    ];
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Find Products',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          automaticallyImplyLeading: false,
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // number of items in each row
            mainAxisSpacing: 20, // spacing between rows
            crossAxisSpacing: 10, // spacing between columns
          ),
          padding: EdgeInsets.all(8.0),
          itemCount: categoryText.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              child: Container(
                  margin: EdgeInsets.only(left: 7, right: 7),
                  child: ExplorCard(
                      image: category[index],
                      color: color[index],
                      text: categoryText[index],
                      borderColor: borderColor[index])),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Beverages()));
              },
            );
          },
        ));
  }
}
