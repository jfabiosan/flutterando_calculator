import 'package:calculadora_container/keyboard.dart';
import 'package:calculadora_container/display_calc.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String currentValue = '';
  double firstOperand = 0;
  double secondOperand = 0;
  String? selectedOperation;

  @override
  Widget build(BuildContext context) {
    String currentOperation = '';

    if (selectedOperation != null) {
      currentOperation +=
          '$firstOperand $selectedOperation $secondOperand = $currentValue';
    }
    return Material(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: DisplayCalc(
              valueCurrent: currentOperation,
              valueDisplay: currentValue,
            ),
          ),
          Expanded(
            flex: 4,
            child: Keyboard(
              numberPressed: (String number) {
                setState(
                  () {
                    if (number == '+' ||
                        number == '-' ||
                        number == 'X' ||
                        number == '/') {
                      // Se um operador for pressionado, armazene o primeiro operando e o tipo de operação
                      firstOperand = double.parse(currentValue);
                      selectedOperation = number;
                      currentValue =
                          ''; // Limpe o visor para inserir o segundo operando
                    } else if (number == '=') {
                      // Se "=" for pressionado, calcule o resultado
                      secondOperand = double.parse(currentValue);
                      double result = calcOperation(
                          selectedOperation!, firstOperand, secondOperand);
                      currentValue = result.toStringAsFixed(1);
                    } else if (number == 'C') {
                      selectedOperation = null;
                      firstOperand = 0;
                      secondOperand = 0;
                      currentOperation = '0';
                      currentValue = '';
                    } else {
                      // Se um número for pressionado, adicione-o ao valor atual
                      currentValue += number;
                    }
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
