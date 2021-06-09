import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/thumps/obj_temp_watcher/obj_temp_bloc.dart';
import '../../../application/thumps/ph_level_watcher/ph_level_bloc.dart';
import '../../../infrastructure/limits/limits_repository.dart';
import 'chart_widgets/air_temp_widget.dart';
import 'chart_widgets/humidity_widget.dart';
import 'chart_widgets/intensity_widget.dart';
import 'chart_widgets/obj_temp_widget.dart';
import 'chart_widgets/ph_level_widget.dart';
import 'wave_clipper.dart';

class HomeBodyWidget extends StatelessWidget {
  const HomeBodyWidget({
    Key? key,
    required this.range,
  }) : super(key: key);

  final DateTimeRange range;

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<ObjTempWatcherBloc, ObjTempWatcherState>(
          listener: (context, state) async {
            final limits = await getLimits('Object_Temperature');
            state.maybeMap(
              loadSuccess: (value) {
                final list = value.objTemps.asList();
                final cur = list.first.value?.getOrCrash() as double;
                final prev = list[1].value?.getOrCrash() as double;
                if ((cur > (limits['High'] as int)) && (prev < (limits['High'] as int))) {
                  _showSnackbar(context, 'Warning! pH level is high\n$cur');
                }
              },
              orElse: () {},
            );
          },
        ),
        BlocListener<PhLevelWatcherBloc, PhLevelWatcherState>(
          listener: (context, state) async {
            final limits = await getLimits('pH_Level');
            state.maybeMap(
              loadSuccess: (value) {
                final list = value.phLevels.asList();
                final cur = list.first.value?.getOrCrash() as double;
                final prev = list[1].value?.getOrCrash() as double;
                if ((cur > (limits['High'] as int)) && (prev < (limits['High'] as int))) {
                  _showSnackbar(context, 'Warning! pH level is high\n$cur');
                } else if (cur < (limits['Low'] as int) && (prev > (limits['Low'] as int))) {
                  _showSnackbar(context, 'Warning! pH level is low\n$cur');
                }
              },
              orElse: () {},
            );
          },
        ),
      ],
      child: SingleChildScrollView(
        physics: const PageScrollPhysics(),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                height: 150,
                child: ClipPath(
                  clipper: WaveClipper(),
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      gradient:
                          LinearGradient(colors: [Theme.of(context).primaryColor, Colors.green]),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(bottom: 25),
                      child: Text(
                        "AgrIndoor",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'DancingScript',
                          fontWeight: FontWeight.bold,
                        ),
                        textScaleFactor: 4,
                      ),
                    ),
                  ),
                ),
              ),
              AirTempWidget(range: range),
              HumidityWidget(range: range),
              IntensityWidget(range: range),
              ObjTempWidget(range: range),
              PhLevelWidget(range: range),
              const SizedBox(height: 200),
            ],
          ),
        ),
      ),
    );
  }
}

void _showSnackbar(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      behavior: SnackBarBehavior.floating,
      backgroundColor: const Color(0xDADDFFDD),
      content: Text(text),
    ),
  );
}
