import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/thumps/air_temp_watcher/air_temp_watcher_bloc.dart';
import '../../../domain/thumps/value_objects.dart';

class AirTempWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AirTempWatcherBloc, AirTempWatcherState>(
      builder: (context, state) => state.map(
        initial: (_) => Container(),
        loading: (_) => const Center(child: CircularProgressIndicator()),
        loadSuccess: (state) => ListView(
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          children: [
            LineChart(
              LineChartData(
                clipData: FlClipData.all(),
                gridData: FlGridData(show: false),
                axisTitleData: FlAxisTitleData(
                  bottomTitle: AxisTitle(
                    titleText: 'Time',
                    // margin: 10,
                    showTitle: true,
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                      fontSize: 15,
                    ),
                  ),
                  leftTitle: AxisTitle(
                    titleText: 'Value',
                    margin: 10,
                    showTitle: true,
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                      fontSize: 15,
                    ),
                  ),
                ),
                borderData: FlBorderData(
                  border: const Border(
                    bottom: BorderSide(),
                    left: BorderSide(),
                  ),
                ),
                lineBarsData: [
                  LineChartBarData(
                      isCurved: true,
                      colors: [Colors.purple[400]!],
                      dotData: FlDotData(show: false),
                      spots: state.airTemps
                          .asList()
                          .map(
                            (x) => FlSpot(
                                (x.value ?? AirTemp(-1)).value.fold((_) => -1, (val) => val),
                                (x.time ?? DateTime.now()).millisecondsSinceEpoch.toDouble()),
                          )
                          .toList()),
                ],
              ),
            ),
          ],
        ),
        loadFailure: (state) => Container(),
      ),
    );
  }
}
