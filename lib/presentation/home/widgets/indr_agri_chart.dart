import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IndrAgriChart extends StatelessWidget {
  const IndrAgriChart({
    Key? key,
    required this.gradColors,
    required this.xVal,
    required this.yVal,
    required this.title,
    this.yLabel = 'Value',
  }) : super(key: key);

  final List<Color> gradColors;
  final Map<int, double> xVal;
  final Map<int, double> yVal;
  final String yLabel;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10, left: 10, top: 20, right: 20),
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black38,
      ),
      height: MediaQuery.of(context).size.height * 0.25,
      child: Column(
        children: [
          Expanded(
            child: Text(
              title,
              style: Theme.of(context).textTheme.headline6?.copyWith(
                    color: Colors.white.withOpacity(0.85),
                  ),
            ),
          ),
          Expanded(
            flex: 5,
            child: LineChart(
              LineChartData(
                // minY: 20,
                // maxY: 25,
                clipData: FlClipData.all(),
                gridData: FlGridData(show: false),
                titlesData: FlTitlesData(
                  bottomTitles: SideTitles(showTitles: false),
                  leftTitles: SideTitles(
                    getTextStyles: (_) => const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                    showTitles: true,
                  ),
                ),
                axisTitleData: FlAxisTitleData(
                  bottomTitle: AxisTitle(
                    titleText: 'Time',
                    showTitle: false,
                    textStyle: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  leftTitle: AxisTitle(
                    titleText: yLabel,
                    showTitle: true,
                    textStyle: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                borderData: FlBorderData(
                  border: const Border(
                    bottom: BorderSide(width: 1.5, color: Colors.white54),
                    left: BorderSide(width: 1.5, color: Colors.white54),
                  ),
                ),
                lineBarsData: [
                  LineChartBarData(
                    show: xVal.isNotEmpty,
                    colors: gradColors,
                    dotData: FlDotData(show: false),
                    belowBarData: BarAreaData(
                      show: true,
                      colors: gradColors.map((color) => color.withOpacity(0.3)).toList(),
                    ),
                    spots: _getSpots(xVal, yVal),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

List<FlSpot> _getSpots(Map<int, double> xVal, Map<int, double> yVal) {
  final List<FlSpot> spots = [];
  for (final i in xVal.keys) {
    spots.add(FlSpot(xVal[i] ?? 0, yVal[i] ?? 0));
  }
  return spots;
}
