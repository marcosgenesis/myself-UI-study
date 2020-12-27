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
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Stack(
        fit: StackFit.passthrough,
        overflow: Overflow.visible,
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 90,
            height: 150,
            width: 230,
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
              margin: EdgeInsets.only(bottom: 40),
              width: 200,
              child: Image.asset(image)),
          Padding(
            padding: EdgeInsets.only(top: 200),
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
