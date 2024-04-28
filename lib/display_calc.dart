import 'package:flutter/material.dart';

class DisplayCalc extends StatefulWidget {
  const DisplayCalc({
    super.key,
    required this.valueOne,
  });

  final double valueOne;

  @override
  State<DisplayCalc> createState() => _DisplayCalcState();
}

class _DisplayCalcState extends State<DisplayCalc> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        color: Colors.white60,
        border: Border.all(
          color: Colors.black,
          width: 5,
        ),
      ),
      child: Text(
        '${widget.valueOne}',
        style: const TextStyle(
          fontSize: 24,
        ),
      ),
    );
  }
}
