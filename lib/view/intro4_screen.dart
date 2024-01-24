import 'package:flutter/material.dart';
import 'package:habit_builder/view/login_screen.dart';
import 'package:habit_builder/widgets/custom_button.dart';

class IntroScreen4 extends StatelessWidget {
  const IntroScreen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 90,
          ),
          //Text Join a supportive community
          const Text(
            "JOIN A SUPPORTIVE COMMUNITY",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              fontFamily: "Klasik",
              height: 1,
              color: Color(0xff573353),
            ),
          ),
          Expanded(
              child: Image.asset(
            "assets/introImg4.png",
            fit: BoxFit.fitWidth,
          )),
          const SizedBox(
            height: 30,
          ),
          //Static Text
          Column(
            children: [
              RichText(
                  text: const TextSpan(
                      text: "WE CAN",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "Manrope",
                        fontSize: 16,
                        color: Color(0xff573353),
                      ),
                      children: [
                    TextSpan(
                        text: " HELP YOU",
                        style: TextStyle(
                          fontFamily: "Manrope",
                          fontSize: 16,
                          color: Color(0xffFC9D45),
                        )),
                    TextSpan(
                        text: " TO BE A BETTER ",
                        style: TextStyle(
                          fontFamily: "Manrope",
                          fontSize: 16,
                          color: Color(0xff573353),
                        ))
                  ])),
              RichText(
                  text: const TextSpan(
                      text: "VERSION OF ",
                      style: TextStyle(
                        fontFamily: "Manrope",
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff573353),
                      ),
                      children: [
                    TextSpan(
                        text: " YOURSELF ",
                        style: TextStyle(
                          fontFamily: "Manrope",
                          fontSize: 16,
                          color: Color(0xffFC9D45),
                        ))
                  ]))
            ],
          ),

          const SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 22,
              right: 22,
            ),
            child: CustomButton(
              text: "Get Started",
              font: 17,
              buttonColor: const Color(0xffFDA758),
              color: const Color(0xff573353),
              onPressed: () {
                Navigator.push(
                    (context),
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
              },
            ),
          ),

          const SizedBox(
            height: 70,
          ),
        ],
      ),
    );
  }
}
