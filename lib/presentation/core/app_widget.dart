import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:indr_agri/presentation/splash/splash_page.dart';

import '../../application/auth/auth_bloc.dart';
import '../../injection.dart';
import '../sign_in/sign_in_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        )
      ],
      child: MaterialApp(
        title: 'Notes',
        debugShowCheckedModeBanner: false,
        // builder: ExtendedNavigator.builder(
        //   router: rte.Router(),
        // ),

        // onGenerateRoute: (settings) {
        //   Navigator.pushNamed(context, settings.name ?? '/');
        // },
        // routes: rte.Router().pagesMap,
        // initialRoute: const rte.HomePageRoute().path,
        home: SplashPage(),
        theme: ThemeData.dark().copyWith(
            primaryColor: Colors.green[800],
            accentColor: Colors.blueAccent,
            canvasColor: const Color(0xFF151515),
            floatingActionButtonTheme:
                FloatingActionButtonThemeData(backgroundColor: Colors.blue[900]),
            inputDecorationTheme: InputDecorationTheme(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            pageTransitionsTheme: const PageTransitionsTheme(builders: {
              TargetPlatform.android: CupertinoPageTransitionsBuilder(),
            })),
      ),
    );
  }
}
