import 'package:flutter/material.dart';
import 'intro1_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const IntroScreen1()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
            alignment: Alignment.topCenter,
            fit: StackFit.expand,
            children: [
          Image.asset(
            "assets/spbgimg.png",
            fit: BoxFit.cover,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 96,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 70),
                child: Text(
                  "WELCOME TO MONUMENTAL HABITS",
                  style: TextStyle(
                      fontFamily: "Klasik",
                      fontSize: 32,
                      height: 1,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff573353)),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          )
        ]));
  }
}
