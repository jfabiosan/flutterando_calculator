import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  final String textButton;
  final Color colorButton;
  final double height;
  final double width;

  const CustomButtom({
    super.key,
    required this.textButton,
    required this.colorButton,
    this.height = 50,
    this.width = 50,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: colorButton,
      height: height,
      width: width,
      child: Text(
        textButton,
        style: const TextStyle(
          fontSize: 24,
        ),
      ),
    );
  }
}
