import 'package:flutter/material.dart';
import 'package:habit_builder/utils/constant_color.dart';
import 'package:habit_builder/widgets/custom_button.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColor.primaryScreenBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ////// ///// back arrow widget
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 15),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.3),
                      shape: BoxShape.circle),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(
                      "assets/backIcon.png",
                      width: 20,
                      height: 20,
                    ),
                  ),
                ),
              )
            ],
          ),
          ///// ////// FORGOT YOUR PASSWORD
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Text(
              " Forgot your password?",
              style: TextStyle(
                  fontSize: 22,
                  fontFamily: "Klasik",
                  fontWeight: FontWeight.w400,
                  color: ConstantColor.textColor),
            ),
          ),

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  /////// ////////// Image

                  Image.asset(
                    "assets/forgotImg.png",
                    height: 264,
                    fit: BoxFit.fitWidth,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ////////// white container
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text(
                              "Enter your registered email below to receive password reset instruction",
                              style: TextStyle(
                                  fontFamily: "Manrope",
                                  fontSize: 13,
                                  color: ConstantColor.textColor),
                            ),
                          ),
                          /////////// email
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 17,
                            ),
                            child: Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12)),
                              child: TextFormField(
                                textInputAction: TextInputAction.next,
                                style: TextStyle(
                                  color: ConstantColor.primary,
                                ),
                                decoration: InputDecoration(
                                  hintText: "  Email",
                                  hintStyle: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.normal,
                                    color: const Color(0xff573353)
                                        .withOpacity(0.3),
                                  ),
                                  filled: true,
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  fillColor: Color(0xffFFF6ED),
                                  prefixIcon: Image.asset(
                                    "assets/mailLogo.png",
                                    width: 10,
                                    height: 10,
                                    scale: 1.5,
                                    color: ConstantColor.textColor
                                        .withOpacity(0.3),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18),
                            child: CustomButton(
                              text: "Send Reset Link",
                              buttonColor: Color(0xffFDA758),
                              color: Color(0xff573353),
                              onPressed: () {},
                              font: 16,
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          ///// ///// Text
                        ],
                      ),
                    ),
                  ),
                  // const Spacer(),
                  const SizedBox(
                    height: 70,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Remember password?',
                        style: TextStyle(
                          fontFamily: "Manrope",
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "Manrope",
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
