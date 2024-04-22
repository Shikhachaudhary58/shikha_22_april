import 'dart:async';
import 'package:attendence_app/screen/login.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Login(formKey:  GlobalKey<FormState>(),),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.deepPurple.shade100,
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'HRMS Attendance',
              style: TextStyle(fontSize: 35.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic
              ),
            ),
            SizedBox(height: 30,),
            Image(
                image: AssetImage('assets/images/splash.png'),
              height: 200,
              width: 200,
            )

          ],
        ),
      ),
    );
  }
}

