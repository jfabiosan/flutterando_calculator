import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  final String textButton;
  final Color colorButton;
  final double? height;
  final double? width;
  final void Function(String) onValueText;

  const CustomButtom({
    super.key,
    required this.textButton,
    required this.colorButton,
    this.height,
    this.width,
    required this.onValueText,
  });

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.sizeOf(context);
    //final heightSize = size.height * 0.14;
    //final widthSize = size.width * 0.25;
    return InkWell(
      onTap: () => onValueText(textButton),
      child: Container(
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
      ),
    );
  }
}
