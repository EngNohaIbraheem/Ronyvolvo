import 'package:flutter/material.dart';

class CustomButtonProfile extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;

  CustomButtonProfile({
    required this.text,
    required this.onPressed,
    this.backgroundColor = const Color(0xFFD9D9D9)
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black,
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          elevation: 0, // To remove the elevation if needed
          padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}
