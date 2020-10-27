import 'package:auto_route/auto_route_annotations.dart';
import 'package:indr_agri/presentation/about/about_us.dart';

import '../home/home_page.dart';
import '../sign_in/sign_in_page.dart';
import '../splash/splash_page.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: SignInPage),
    MaterialRoute(page: HomePage),
    MaterialRoute(page: AboutUs),
  ],
)
class $Router {}
