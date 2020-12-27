import 'package:flutter/material.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';
import 'package:layouts/widgets/category.widget.dart';
import 'package:layouts/widgets/heading.widget.dart';

class HomePage extends StatelessWidget {
  final GlobalKey<AnimatedCircularChartState> _chartKey =
      new GlobalKey<AnimatedCircularChartState>();
  final GlobalKey<AnimatedCircularChartState> _chartKey2 =
      new GlobalKey<AnimatedCircularChartState>();
  final GlobalKey<AnimatedCircularChartState> _chartKey3 =
      new GlobalKey<AnimatedCircularChartState>();

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
            height: 260,
            child: ListView(
              scrollDirection: Axis.horizontal,
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
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.topCenter,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        "Progress",
                        style: TextStyle(
                          fontFamily: "Campton",
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Column(
                        children: [
                          Text(
                            "Organization",
                            style: TextStyle(
                              fontFamily: "Campton",
                              fontSize: 12,
                              color: Colors.white60,
                            ),
                          ),
                          CategoryGraph(
                            lineColor: Color(0xFF7B0BEA),
                            percent: "74,3%",
                          ),
                          Text(
                            "Habits",
                            style: TextStyle(
                              fontFamily: "Campton",
                              fontSize: 12,
                              color: Colors.white60,
                            ),
                          ),
                          CategoryGraph(
                            lineColor: Color(0xFFB576F4),
                            percent: "52,2%",
                          ),
                          Text(
                            "Finances",
                            style: TextStyle(
                              fontFamily: "Campton",
                              fontSize: 12,
                              color: Colors.white60,
                            ),
                          ),
                          CategoryGraph(
                            lineColor: Color(0xFFFFD200),
                            percent: "52,3%",
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Stack(alignment: Alignment.center, children: [
                  AnimatedCircularChart(
                    key: _chartKey,
                    size: const Size(240.0, 240.0),
                    duration: Duration(milliseconds: 1500),
                    holeRadius: 80,
                    initialChartData: <CircularStackEntry>[
                      new CircularStackEntry(
                        <CircularSegmentEntry>[
                          new CircularSegmentEntry(
                            74.3,
                            Theme.of(context).accentColor,
                            rankKey: 'completed',
                          ),
                        ],
                        rankKey: 'progress',
                      ),
                    ],
                    chartType: CircularChartType.Radial,
                    edgeStyle: SegmentEdgeStyle.round,
                    percentageValues: true,
                  ),
                  AnimatedCircularChart(
                    key: _chartKey2,
                    size: const Size(190.0, 190.0),
                    duration: Duration(milliseconds: 1500),
                    initialChartData: <CircularStackEntry>[
                      new CircularStackEntry(
                        <CircularSegmentEntry>[
                          new CircularSegmentEntry(
                            52.2,
                            Color(0xFFB576F4),
                            rankKey: 'completed',
                          ),
                        ],
                        rankKey: 'progress',
                      ),
                    ],
                    chartType: CircularChartType.Radial,
                    edgeStyle: SegmentEdgeStyle.round,
                    percentageValues: true,
                  ),
                  AnimatedCircularChart(
                    key: _chartKey3,
                    size: const Size(160.0, 160.0),
                    holeRadius: 40,
                    duration: Duration(milliseconds: 1500),
                    initialChartData: <CircularStackEntry>[
                      new CircularStackEntry(
                        <CircularSegmentEntry>[
                          new CircularSegmentEntry(
                            52.3,
                            Color(0xFFFFD200),
                            rankKey: 'completed',
                          ),
                        ],
                        rankKey: 'progress',
                      ),
                    ],
                    chartType: CircularChartType.Radial,
                    edgeStyle: SegmentEdgeStyle.round,
                    percentageValues: true,
                  )
                ]),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CategoryGraph extends StatelessWidget {
  final Color lineColor;
  final String percent;
  CategoryGraph({
    @required this.lineColor,
    @required this.percent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 76,
      margin: EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 15,
            width: 15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              color: lineColor,
            ),
          ),
          Text(
            percent,
            style: TextStyle(
              fontFamily: "Campton",
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
