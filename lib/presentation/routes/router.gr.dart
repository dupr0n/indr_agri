// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;

import '../about/about_us.dart' as _i5;
import '../home/home_page.dart' as _i4;
import '../sign_in/sign_in_page.dart' as _i3;
import '../splash/splash_page.dart' as _i2;

class Router extends _i1.RootStackRouter {
  Router();

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashPageRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i2.SplashPage());
    },
    SignInPageRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i3.SignInPage());
    },
    HomePageRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i4.HomePage());
    },
    AboutUsRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i5.AboutUs());
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashPageRoute.name, path: '/'),
        _i1.RouteConfig(SignInPageRoute.name, path: '/sign-in-page'),
        _i1.RouteConfig(HomePageRoute.name, path: '/home-page'),
        _i1.RouteConfig(AboutUsRoute.name, path: '/about-us')
      ];
}

class SplashPageRoute extends _i1.PageRouteInfo {
  const SplashPageRoute() : super(name, path: '/');

  static const String name = 'SplashPageRoute';
}

class SignInPageRoute extends _i1.PageRouteInfo {
  const SignInPageRoute() : super(name, path: '/sign-in-page');

  static const String name = 'SignInPageRoute';
}

class HomePageRoute extends _i1.PageRouteInfo {
  const HomePageRoute() : super(name, path: '/home-page');

  static const String name = 'HomePageRoute';
}

class AboutUsRoute extends _i1.PageRouteInfo {
  const AboutUsRoute() : super(name, path: '/about-us');

  static const String name = 'AboutUsRoute';
}
