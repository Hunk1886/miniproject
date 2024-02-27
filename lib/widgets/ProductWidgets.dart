import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini12/consts/product_screen.dart';

class ProductWidgets extends StatelessWidget {
  List itemTile = [
    "Tv",
    "Notebook",
    "earphones",
    "keyboard",
  ];
  List itemimage = [
    "LCD.png",
    "Notebook.2.png",
    "earphones.2.png",
    "keyboard.3.png",
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double itemWidth = (screenWidth - 40) / 2;

    return SingleChildScrollView(
      child: Container(
        height: 240,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            for (int index = 0; index < itemTile.length; index++)
              Container(
                width: itemWidth,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Productscreen(),
                            ));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        child: Image.asset("assets/${(itemimage[index])}"),
                        height: itemWidth * 0.75,
                      ),
                    ),
                    Text(
                      itemTile[index],
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$10",
                            style: TextStyle(
                              fontSize: 17,
                              color: Color(0xFF146ABE),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            CupertinoIcons.add,
                            color: Color(0xFF146ABE),
                            size: 26,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
