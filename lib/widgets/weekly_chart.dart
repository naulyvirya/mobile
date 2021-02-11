import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:prakerin/constants.dart';

class WeeklyChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.7,
      child: BarChart(
        BarChartData(
          barGroups: getBarGroups(),
          borderData: FlBorderData(show: false),
          titlesData: FlTitlesData(
              leftTitles: SideTitles(
                showTitles: false,
              ),
              bottomTitles: SideTitles(
                showTitles: true,
              )),
        ),
      ),
    );
  }
}

getBarGroups() {
  List<double> barChartDatas = [6, 10, 8, 7, 10, 15, 9];
  List<BarChartGroupData> barChartGroups = [];
  barChartDatas.asMap().forEach(
        (i, value) => barChartGroups.add(
          BarChartGroupData(
            x: i,
            barRods: [
              BarChartRodData(
                y: value,
                // this is not proper way, this is just for demo
                color: i == 4 ? kPrimaryColor : kInactiveChartColor,
                width: 16,
              )
            ],
          ),
        ),
      );
  return barChartGroups;
}
