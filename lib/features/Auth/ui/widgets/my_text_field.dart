import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/gradient_borders.dart';

class MyTextField extends StatefulWidget {
  final String hintText;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final String label;

  const MyTextField(
      {super.key,
      required this.hintText,
      required this.keyboardType,
      required this.controller,
      this.label = ''});

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  bool obscureText = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      obscureText = widget.label.toLowerCase().contains('password');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
          visible: widget.label.isNotEmpty,
          child: Column(
            children: [
              Text(
                widget.label,
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 8.0),
            ],
          ),
        ),
        TextField(
          controller: widget.controller,
          keyboardType: widget.keyboardType,
          obscureText: obscureText,
          obscuringCharacter: '*',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            fontFamily: "Inter",
            color: Colors.black,
          ),
          decoration: InputDecoration(
            suffixIcon: widget.label.toLowerCase().contains('password')
                ? obscureText
                    ? GestureDetector(
                        onTap: () {
                          setState(() {
                            obscureText = !obscureText;
                          });
                        },
                        child: Image.asset(
                          'assets/images/blind.png',
                          color: Colors.grey,
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          setState(() {
                            obscureText = !obscureText;
                          });
                        },
                        child: Image.asset(
                          'assets/images/view.png',
                          color: Colors.grey,
                        ),
                      )
                : null,
            border: GradientOutlineInputBorder(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF0E71EB),
                  Color(0xFF7433CC),
                ],
              ),
              width: 1.5,
              borderRadius: BorderRadius.circular(12.0),
            ),
            errorBorder: GradientOutlineInputBorder(
              gradient: LinearGradient(
                colors: [
                  Colors.red,
                  Colors.redAccent,
                ],
              ),
            ),
            fillColor: Colors.white,
            filled: true,
            hintText: widget.hintText,
            hintStyle: GoogleFonts.inter(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
