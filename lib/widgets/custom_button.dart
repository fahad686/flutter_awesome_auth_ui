import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final double? font;
  final Color color, buttonColor;
  CustomButton(
      {required this.text,
      required this.onPressed,
      this.font = 22,
      required this.buttonColor,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          fixedSize: MaterialStateProperty.all<Size>(Size.fromWidth(374.0)),
          minimumSize: MaterialStateProperty.all<Size>(Size(
              double.infinity, 60.0)), // Set the height as per your requirement
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  8.0), // Adjust the radius as per your requirement
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color?>(buttonColor),
        ),
        child: Text(
          text,
          style: TextStyle(fontFamily: "Manrope", fontSize: font, color: color),
        ));
  }
}
