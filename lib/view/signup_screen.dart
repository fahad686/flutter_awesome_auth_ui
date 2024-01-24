import 'package:flutter/material.dart';
import 'package:habit_builder/utils/constant_color.dart';
import 'package:habit_builder/widgets/custom_button.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  //define checkbox bool values
  bool checkbox1 = false;
  bool checkbox2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColor.primaryScreenBackgroundColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Top Image
            const SizedBox(
              height: 70,
            ),
            //Top Picture
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/signupScreenTopImg.png",
                height: 200,
                width: 150,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //Text CREATE YOUR ACCOUNT
            Text(
              "CREATE YOUR ACCOUNT",
              style: TextStyle(
                  color: ConstantColor.textColor,
                  fontSize: 18,
                  fontFamily: "Manrope",
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            //form
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Form(
                  child: Column(
                children: [
                  //username TextFormField
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
                        hintText: "  Username",
                        filled: true,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        fillColor: Color(0xffFFF6ED),
                        prefixIcon: Image.asset(
                          "assets/userLogo.png",
                          color: ConstantColor.textColor.withOpacity(0.3),
                        ),
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Color(0xff573353).withOpacity(0.3),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  //email
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
                        hintText: "  Email",
                        filled: true,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        fillColor: Color(0xffFFF6ED),
                        prefixIcon: Image.asset(
                          "assets/mailLogo.png",
                          width: 10,
                          height: 10,
                          scale: 1.5,
                          color: ConstantColor.textColor.withOpacity(0.3),
                        ),
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Color(0xff573353).withOpacity(0.3),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  //password
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
                          filled: true,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          fillColor: const Color(0xffFFF6ED),
                          prefixIcon: Image.asset(
                            "assets/passwordLogo.png",
                            width: 10,
                            height: 10,
                            scale: 1.5,
                            color: ConstantColor.textColor.withOpacity(0.3),
                          ),
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: const Color(0xff573353).withOpacity(0.3),
                          ),
                          suffixText: "Show",
                          suffixStyle: const TextStyle(color: Colors.black)),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              )),
            ),

            //////////////////////////////////////////Checkbox1 with row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  Checkbox(
                      activeColor: ConstantColor.primary,
                      value: checkbox1,
                      onChanged: (value) {
                        setState(() {
                          checkbox1 = value!;
                        });
                      }),
                  Text(
                    "Keep me signed in",
                    style: TextStyle(
                      color: ConstantColor.textColor,
                      fontFamily: "Manrope",
                      fontSize: 15,
                    ),
                  ),
                  //
                ],
              ),
            ),
            //Checkbox2 with row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  Checkbox(
                      activeColor: ConstantColor.primary,
                      value: checkbox2,
                      onChanged: (value) {
                        setState(() {
                          checkbox2 = value!;
                        });
                      }),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        "Email me about special pricing  and more",
                        style: TextStyle(
                          color: ConstantColor.textColor,
                          fontFamily: "Manrope",
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  //
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ////////////////////////////////////////Create account button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: CustomButton(
                text: "Create Account",
                buttonColor: const Color(0xffFDA758),
                color: const Color(0xff573353),
                onPressed: () {},
                font: 16,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ///////////////////////////////////Divider
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: Divider(
                    thickness: 1,
                    color: ConstantColor.textColor.withOpacity(0.3),
                  ),
                ),
                Center(
                  child: Container(
                    color: ConstantColor.primaryScreenBackgroundColor,
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: Text(
                      "Or sign in with",
                      style: TextStyle(
                        color: ConstantColor.textColor.withOpacity(0.3),
                      ),
                    ),
                  ),
                )
              ],
            ),
            ///////////////////////// Google and Facebook button in row
            Padding(
              padding: const EdgeInsets.only(left: 17, right: 17, top: 10),
              child: Row(
                children: [
                  //Continue with google
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 5,
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
                                  "Google",
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
                  ),
                  const SizedBox(height: 10),
                  //Continue with Facebook
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 5,
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
                                  "Facebook",
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
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),

            //////////////////////// Text Already have an account
            Padding(
              padding: EdgeInsets.only(top: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: "Manrope",
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Sign In",
                      style: TextStyle(
                          fontFamily: "Manrope",
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff573353)),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
