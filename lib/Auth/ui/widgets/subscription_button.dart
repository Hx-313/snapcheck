import 'package:flutter/material.dart';

class SubscriptionButton extends StatefulWidget {
  final String text;
  final Function() onTap;
  const SubscriptionButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  State<SubscriptionButton> createState() => _SubscriptionButtonState();
}

class _SubscriptionButtonState extends State<SubscriptionButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0Xff253ea77a),
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: Color(0xFF375DFB),
          ),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: Text(
              widget.text,
              style: TextStyle(
                color: Colors.black,
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
