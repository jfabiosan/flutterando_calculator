import 'package:flutter/material.dart';

class CustomButtonEqual extends StatefulWidget {
  final double? height;
  final double? width;

  final VoidCallback onPressed;

  const CustomButtonEqual({
    super.key,
    this.height,
    this.width,
    required this.onPressed,
  });

  @override
  State<CustomButtonEqual> createState() => _CustomButtonEqualState();
}

class _CustomButtonEqualState extends State<CustomButtonEqual> {
  late Color _buttonColor;
  late Color _textColor;
  late double _fontSize;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onPressed();
        setState(
          () {
            _buttonColor = Colors.green;
            _fontSize = 40.0;
            _textColor = Colors.white;
          },
        );
        Future.delayed(
          const Duration(milliseconds: 400),
          () {
            setState(() {
              _buttonColor = Colors.amber;
              _fontSize = 24.0;
              _textColor = Colors.black;
            });
          },
        );
      },
      child: AnimatedContainer(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: _buttonColor,
        ),
        alignment: Alignment.center,
        height: widget.height,
        width: widget.width,
        duration: const Duration(milliseconds: 200),
        child: Text(
          '=',
          style: TextStyle(
            fontSize: _fontSize,
            color: _textColor,
          ),
        ),
      ),
    );
  }
}
