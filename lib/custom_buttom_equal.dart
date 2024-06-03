import 'package:flutter/material.dart';

class CustomButtomEqual extends StatelessWidget {
  final String textButton;
  final Color colorButton;
  final double? height;
  final double? width;
  final void Function(String) onValueText;

  const CustomButtomEqual({
    super.key,
    required this.textButton,
    required this.colorButton,
    this.height,
    this.width,
    required this.onValueText,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onValueText(textButton);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: colorButton,
        ),
        alignment: Alignment.center,
        height: height,
        width: width,
        child: Text(
          textButton,
          style: const TextStyle(
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
