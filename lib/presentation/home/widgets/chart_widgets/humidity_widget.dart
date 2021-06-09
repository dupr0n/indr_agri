import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/thumps/humidity_watcher/humidity_watcher_bloc.dart';
import '../../../../domain/thumps/value_objects.dart';
import '../indr_agri_chart.dart';

class HumidityWidget extends StatelessWidget {
  const HumidityWidget({required this.range});

  final DateTimeRange range;

  @override
  Widget build(BuildContext context) {
    final gradColors = [Theme.of(context).primaryColor, Colors.green];
    return BlocBuilder<HumidityWatcherBloc, HumidityWatcherState>(
      builder: (context, state) => state.map(
        initial: (_) => Container(),
        loading: (_) => const Center(child: CircularProgressIndicator()),
        loadSuccess: (data) {
          final list = data.humidities.asList().where((element) {
            final time = element.time ?? DateTime.now();
            return time.isAfter(range.start) &&
                time.isBefore(range.end.add(const Duration(minutes: 1)));
          }).toList();
          final xVal = list
              .map((e) => (e.time ?? DateTime.now()).millisecondsSinceEpoch.toDouble())
              .toList()
              .asMap();
          final yVal = list
              .map((e) => (e.value ?? Humidity(69.420)).value.fold((_) => -1.0, (val) => val))
              .toList()
              .asMap();
          return IndrAgriChart(
            gradColors: gradColors,
            xVal: xVal,
            yVal: yVal,
            title: 'Humidity',
            yLabel: 'Percentage (%)',
          );
        },
        loadFailure: (f) => Container(color: Colors.red, child: Text(f.thumpFailure.toString())),
      ),
    );
  }
}
