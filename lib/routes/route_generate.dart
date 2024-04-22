import 'package:attendence_app/routes/routes.dart';
import 'package:attendence_app/screen/home.dart';
import 'package:attendence_app/screen/login.dart';
import 'package:attendence_app/screen/signup.dart';
import 'package:attendence_app/screen/splash_screen.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {

    Route navigateToScreen({required RouteSettings settings, required Widget route}) {
      return MaterialPageRoute(builder: (_) => route);
    }

    switch (settings.name) {
      case "/":
        return navigateToScreen(
          settings: settings,
          route: const SplashScreen(),
        );
        case Routes.loginPageRoute:
          return navigateToScreen(
              settings: settings,
              route: Login(formKey: GlobalKey<FormState>(),)
          );
      case Routes.homePageRoute:
        return navigateToScreen(
            settings: settings,
            route: const Home()
        );
      case Routes.signUpPageRoute:
        return navigateToScreen(
            settings: settings,
            route: SignUp(formKey:GlobalKey<FormState>(),)
        );
      default:
        return navigateToScreen(
          settings: settings,
          route: const SplashScreen(),
        );
    }
  }
}
