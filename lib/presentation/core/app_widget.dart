import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:indr_agri/presentation/about/about_us.dart';
import 'package:indr_agri/presentation/home/home_page.dart';
import '../routes/router.gr.dart' as rte;
import '../splash/splash_page.dart';
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
      // child: MaterialApp.router(
      //   routeInformationParser: rte.Router().defaultRouteParser(),
      //   routerDelegate: rte.Router().delegate(),
      //   theme: ThemeData.dark().copyWith(
      //     primaryColor: Colors.green[800],
      //     accentColor: Colors.blueAccent,
      //     canvasColor: const Color(0xFF151515),
      //     floatingActionButtonTheme:
      //         FloatingActionButtonThemeData(backgroundColor: Colors.blue[900]),
      //     inputDecorationTheme: InputDecorationTheme(
      //       border: OutlineInputBorder(
      //         borderRadius: BorderRadius.circular(8),
      //       ),
      //     ),
      //     pageTransitionsTheme: const PageTransitionsTheme(
      //       builders: {
      //         TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      //       },
      //     ),
      //   ),
      // ),
      child: MaterialApp(
        title: 'Notes',
        debugShowCheckedModeBanner: false,
        //  builder: ExtendedNavigator.builder(
        //   router: rte.Router(),
        // ),

        // onGenerateRoute: (settings) {
        //   Navigator.pushNamed(context, settings.name ?? '/');
        // },
        routes: {
          const rte.AboutUsRoute().path: (ctx) => const AboutUs(),
          const rte.HomePageRoute().path: (ctx) => const HomePage(),
          const rte.SignInPageRoute().path: (ctx) => const SignInPage(),
          const rte.SplashPageRoute().path: (ctx) => const SplashPage(),
        },
        initialRoute: const rte.SplashPageRoute().path,
        // home: SplashPage(),
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
