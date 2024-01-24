import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import 'intro4_screen.dart';

class IntroScreen1 extends StatefulWidget {
  const IntroScreen1({super.key});

  @override
  State<IntroScreen1> createState() => _IntroScreen1State();
}

class _IntroScreen1State extends State<IntroScreen1> {
  final List<String> titlesList = [
    "WELCOME TO \n MONUMENTAL HABITS",
    "CREATE NEW \n HABIT EASILY",
    "KEEP TRACK OF YOUR \n PROGRESS",
  ];
  final List<String> imagesList = [
    "assets/introImg1.png",
    "assets/introImg2.png",
    "assets/introImg3.png",
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 90,
          ),
          Expanded(
            child: CarouselSlider.builder(
                carouselController: carouselController,
                itemCount: titlesList.length,
                itemBuilder: (context, index, _) {
                  return Column(
                    children: [
                      Text(
                        titlesList[index],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontFamily: "Klasik",
                          height: 1,
                          color: Color(0xff573353),
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Expanded(
                          child: Image.asset(
                        imagesList[index],
                        fit: BoxFit.cover,
                      )),
                      const SizedBox(
                        height: 50,
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
                    ],
                  );
                },
                options: CarouselOptions(
                    viewportFraction: 1,
                    height: 600,
                    onPageChanged: (index, _) {
                      setState(() {
                        // print(currentIndex);
                        currentIndex = index;
                      });
                    })),
          ),
          const SizedBox(
            height: 50,
          ),
          //Bottom area skip DotIndicator next
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const IntroScreen4()),
                    );
                  },
                  child: const Text(
                    "Skip",
                    style: TextStyle(
                      fontFamily: "Manrope",
                      color: Color(0xff573353),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                DotsIndicator(
                  dotsCount: titlesList.length,
                  position: currentIndex,
                  decorator: const DotsDecorator(
                    color: Color(0xffF9B566),
                    activeColor: Color(0xff573353),
                  ),
                ),
                InkWell(
                  onTap: () {
                    if (currentIndex == 2) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const IntroScreen4()),
                      );
                    } else {
                      setState(() {
                        carouselController.nextPage();
                      });
                    }
                    setState(() {
                      carouselController.nextPage();
                    });
                  },
                  child: const Text(
                    "Next",
                    style: TextStyle(
                      fontFamily: "Manrope",
                      color: Color(0xff573353),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 90,
          ),
        ],
      ),
    );
  }
}
