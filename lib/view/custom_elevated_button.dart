import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {

  final String text;
  final funpageRoute;

  // 무조건 받는것 나중에 수정
  const CustomElevatedButton({required this.text, required this.funpageRoute});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.black,
        onPrimary: Colors.white,
        minimumSize: Size(double.infinity, 40),
        shape : RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onPressed: funpageRoute,
      child : Text("$text"),
    );
  }
}