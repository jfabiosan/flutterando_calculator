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
    return Expanded(
      child: Column(
        children: [
          Container(
            alignment: Alignment.bottomRight,
            width: MediaQuery.sizeOf(context).width,
            child: Text(
              widget.valueCurrent,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomRight,
            width: MediaQuery.sizeOf(context).width,
            child: Text(
              widget.valueDisplay,
              style: const TextStyle(
                fontSize: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
