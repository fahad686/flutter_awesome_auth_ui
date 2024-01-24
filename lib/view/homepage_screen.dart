import 'package:flutter/material.dart';
import 'package:habit_builder/utils/constant_color.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColor.primaryScreenBackgroundColor,
      body: Column(children: [
        ////// ///// top widgets
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /////// //// left top Picture Hamburger Image

                Image.asset(
                  "assets/homePageImage/Hamburger Menu.png",
                  width: 40,
                  height: 40,
                ),
                ////// ///// HomePage Text
                Text(
                  "HomePage ",
                  style: TextStyle(
                      fontFamily: "Manrope",
                      fontSize: 18,
                      color: ConstantColor.textColor,
                      fontWeight: FontWeight.w700),
                ),
                /////// //// left top Picture Hamburger Image

                Image.asset(
                  "assets/homePageImage/Image.png",
                  width: 30,
                  height: 30,
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
