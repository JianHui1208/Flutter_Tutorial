import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final void Function() onTap;
  final String text;

  const BottomButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      color: const Color(0xFFEB1555),
      child: GestureDetector(
        onTap: onTap,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
