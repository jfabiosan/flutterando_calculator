import 'package:flutter/material.dart';

class DisplayCalc extends StatefulWidget {
  const DisplayCalc({
    super.key,
    required this.valueDisplay,
    required this.valueCurrent,
  });

  final String valueCurrent;
  final String valueDisplay;

  @override
  State<DisplayCalc> createState() => _DisplayCalcState();
}

class _DisplayCalcState extends State<DisplayCalc> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final displayHeight = size.height * 0.10;
    final displayWidth = size.width;
    return Expanded(
      child: Column(
        children: [
          Container(
            color: Colors.green.shade50,
            alignment: Alignment.bottomRight,
            width: displayWidth,
            height: displayHeight,
            child: Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text(
                widget.valueCurrent,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.green.shade50,
            alignment: Alignment.bottomRight,
            width: displayWidth,
            height: displayHeight,
            child: Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Text(
                widget.valueDisplay,
                style: const TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
