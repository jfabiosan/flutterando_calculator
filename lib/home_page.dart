import 'package:calculadora_container/keyboard.dart';
import 'package:calculadora_container/display_calc.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String valueOne = '0';

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: DisplayCalc(
              valueOne: valueOne,
            ),
          ),
          Expanded(
            flex: 4,
            child: Keyboard(
              numberPressed: (String number) {
                setState(
                  () {
                    valueOne = number;
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
