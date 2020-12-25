import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String title;
  final String image;
  Category({
    @required this.title,
    @required this.image,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, bottom: 20),
      child: Stack(
        // fit: StackFit.passthrough,
        overflow: Overflow.visible,
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 70,
            height: 160,
            width: 300,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF303038),
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(bottom: 30),
              width: 210,
              child: Image.asset(image)),
          Padding(
            padding: EdgeInsets.only(top: 190),
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontFamily: "Campton",
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
