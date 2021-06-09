import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/auth/auth_bloc.dart';
import '../../application/thumps/air_temp_watcher/air_temp_watcher_bloc.dart';
import '../../application/thumps/humidity_watcher/humidity_watcher_bloc.dart';
import '../../application/thumps/intensity_watcher/intensity_bloc.dart';
import '../../application/thumps/obj_temp_watcher/obj_temp_bloc.dart';
import '../../application/thumps/ph_level_watcher/ph_level_bloc.dart';
import '../../injection.dart';
import '../routes/router.gr.dart' as rte;
import 'widgets/custom_bottom_app_bar.dart';
import 'widgets/home_body_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage();

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var range = DateTimeRange(
      start: DateTime.now().subtract(const Duration(days: 10)),
      end: DateTime.now(),
    );
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AirTempWatcherBloc>()..add(const AirTempWatcherEvent.started()),
        ),
        BlocProvider(
          create: (context) =>
              getIt<HumidityWatcherBloc>()..add(const HumidityWatcherEvent.started()),
        ),
        BlocProvider(
          create: (context) =>
              getIt<IntensityWatcherBloc>()..add(const IntensityWatcherEvent.started()),
        ),
        BlocProvider(
          create: (context) =>
              getIt<ObjTempWatcherBloc>()..add(const ObjTempWatcherEvent.started()),
        ),
        BlocProvider(
          create: (context) =>
              getIt<PhLevelWatcherBloc>()..add(const PhLevelWatcherEvent.started()),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeMap(
                unauthenticated: (_) async =>
                    Navigator.of(context).pushReplacementNamed(const rte.SignInPageRoute().path),
                orElse: () {},
              );
            },
          ),
        ],
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.transparent,
            onPressed: () async {
              final changedRange = await showDateRangePicker(
                    context: context,
                    firstDate: DateTime.now().subtract(const Duration(days: 365)),
                    lastDate: DateTime.now(),
                  ) ??
                  range;
              // print(changedRange);
              setState(() {
                // print('Got here');
                range = changedRange;
              });
            },
            child: Image.asset(
              'assets/images/leaf.png',
              excludeFromSemantics: true,
              height: 40,
              width: 40,
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: const CustomBottomAppBar(),
          body: HomeBodyWidget(range: range),
        ),
      ),
    );
  }
}

// Future<void> _showLeaf(BuildContext ctx) async {
//   await showDialog(
//     barrierColor: const Color(0xFF2E2E2E),
//     barrierDismissible: true,
//     context: ctx,
//     builder: (ctx) => Column(
//       children: [
//         const SizedBox(height: 100),
//         SizedBox(
//           width: double.infinity,
//           child: Image.asset(
//             'assets/images/leaf.png',
//             width: 200,
//             height: 200,
//           ),
//         ),
//       ],
//     ),
//   );
// }
