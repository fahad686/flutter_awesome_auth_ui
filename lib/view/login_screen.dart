import 'package:flutter/material.dart';
import 'package:habit_builder/utils/constant_color.dart';
import 'package:habit_builder/view/forgotpassword_screen.dart';
import 'package:habit_builder/view/signup_screen.dart';
import 'package:habit_builder/widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    // double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/optionLoginBgPic.png",
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Column(
            children: [
              const Spacer(),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                    colors: [
                      Colors.transparent,
                      Color(0xffFFF3E9),
                      Color(0xffFFF3E9)
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )),
                ),
              ),
            ],
          ),
          Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.3),
                          shape: BoxShape.circle),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Image.asset(
                          "assets/Help Icon.png",
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 120,
              ),
              // const Spacer(),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //TOP title
                      const Center(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "WELCOME TO\n MONUMENTAL HABITS",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Klasik",
                                fontSize: 28,
                                height: 1,
                                // fontWeight: FontWeight.bold,
                                color: Color(0xff573353)),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      //Continue with google
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 2,
                                  blurRadius: 7,
                                )
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(
                                    child: Image.asset(
                                      "assets/Google Icon.png",
                                      width: 23,
                                      height: 23,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    "Continue with Google    ",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: "Manrope",
                                      color: Color(0xff573353),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      //Continue with Facebook
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 2,
                                  blurRadius: 7,
                                )
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(
                                    child: Image.asset(
                                      "assets/fbLogo.png",
                                      width: 23,
                                      height: 23,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    "Continue with Facebook",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: "Manrope",
                                      color: Color(0xff573353),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      //Bottom Container
                      Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            topLeft: Radius.circular(30),
                          ),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 15,
                            ),
                            const Text(
                              "Login with email",
                              style: TextStyle(
                                fontSize: 13,
                                fontFamily: "Manrope",
                                color: Color(0xff573353),
                              ),
                            ),

                            const SizedBox(
                              height: 15,
                            ),
                            //Form
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Form(
                                  child: Column(
                                children: [
                                  Container(
                                    clipBehavior: Clip.hardEdge,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: TextFormField(
                                      textInputAction: TextInputAction.next,
                                      style: TextStyle(
                                        color: ConstantColor.primary,
                                      ),
                                      decoration: InputDecoration(
                                        hintText: "  Email",
                                        hintStyle: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: const Color(0xff573353)
                                              .withOpacity(0.3),
                                        ),
                                        filled: true,
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        fillColor: const Color(0xffFFF6ED),
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
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    clipBehavior: Clip.hardEdge,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: TextFormField(
                                      textInputAction: TextInputAction.next,
                                      style: TextStyle(
                                        color: ConstantColor.primary,
                                      ),
                                      decoration: InputDecoration(
                                          hintText: "  Password",
                                          hintStyle: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: const Color(0xff573353)
                                                .withOpacity(0.3),
                                          ),
                                          filled: true,
                                          enabledBorder: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          fillColor: const Color(0xffFFF6ED),
                                          prefixIcon: Image.asset(
                                            "assets/passwordLogo.png",
                                            width: 10,
                                            height: 10,
                                            scale: 1.5,
                                            color: ConstantColor.textColor
                                                .withOpacity(0.3),
                                          ),
                                          suffixText: "Show",
                                          suffixStyle: const TextStyle(
                                              color: Colors.black)),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                ],
                              )),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            //login button
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 22),
                              child: CustomButton(
                                text: "Login",
                                buttonColor: const Color(0xffFDA758),
                                color: const Color(0xff573353),
                                onPressed: () {},
                                font: 16,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            //text Forget password
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ForgotPasswordScreen()));
                              },
                              child: const Text(
                                "Forgot Password?",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: "Manrope",
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            //last text row
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Don't have an account?",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: "Manrope",
                                  ),
                                ),
                                const SizedBox(
                                  width: 3,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SignUpScreen()));
                                  },
                                  child: const Text(
                                    "Signup",
                                    style: TextStyle(
                                        fontFamily: "Manrope",
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff573353)),
                                  ),
                                )
                              ],
                            ),

                            const SizedBox(
                              height: 90,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
