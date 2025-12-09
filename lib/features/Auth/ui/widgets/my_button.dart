import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  final String text;
  final Function() onTap;
  const MyButton({super.key, required this.text, required this.onTap});

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF0E71EB),
              Color(0xFF7433CC),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: Text(
              widget.text,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Inter',
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
