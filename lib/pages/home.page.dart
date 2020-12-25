import 'package:flutter/material.dart';
import 'package:layouts/widgets/category.widget.dart';
import 'package:layouts/widgets/heading.widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: [
          Heading(),
          SizedBox(
            height: 20,
          ),
          Container(
              height: 510,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Category(
                    title: "Tasks",
                    image: "assets/images/tasks.png",
                  ),
                  Category(
                    title: "Finances",
                    image: "assets/images/finances.png",
                  ),
                  Category(
                    title: "Habits",
                    image: "assets/images/habits.png",
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
