import 'package:flutter/material.dart';

class DisplayCalc extends StatefulWidget {
  const DisplayCalc({
    super.key,
    required this.valueOne,
  });

  final String valueOne;

  @override
  State<DisplayCalc> createState() => _DisplayCalcState();
}

class _DisplayCalcState extends State<DisplayCalc> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.bottomRight,
        width: MediaQuery.sizeOf(context).width,
        child: Text(
          widget.valueOne,
          style: const TextStyle(
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
