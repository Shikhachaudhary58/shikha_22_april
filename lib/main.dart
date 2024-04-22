import 'package:attendence_app/provider/bottom_nav_provider.dart';
import 'package:attendence_app/provider/password_visibility.dart';
import 'package:attendence_app/routes/route_generate.dart';
import 'package:attendence_app/screen/home.dart';
import 'package:attendence_app/screen/login.dart';
import 'package:attendence_app/screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static PasswordVisibilityProvider passwordVisibility = PasswordVisibilityProvider();
  static BottomNavBarProvider bottomNavBar = BottomNavBarProvider();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider.value(value: passwordVisibility),
          ChangeNotifierProvider.value(value: bottomNavBar),
        ],
      /*ChangeNotifierProvider(
        create: (context) => PasswordVisibilityProvider(),*/
      child:MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Home(),
        initialRoute: '/home',
        onGenerateRoute: RouteGenerator.onGenerateRoute,
      )
    );
  }
}

