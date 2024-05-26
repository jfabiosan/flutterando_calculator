import 'package:calculadora_container/keyboard.dart';
import 'package:calculadora_container/display_calc.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String valueDisplay = '';
  String valueCurrent = '';
  double firstOperand = 0;
  double secondOperand = 0;
  String? selectedOperation;

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
              valueCurrent: valueCurrent,
              valueDisplay: valueDisplay,
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
                      firstOperand = double.parse(valueDisplay);
                      selectedOperation = number;
                      valueDisplay =
                          ''; // Limpe o visor para inserir o segundo operando
                    } else if (number == '=') {
                      // Se "=" for pressionado, calcule o resultado
                      secondOperand = double.parse(valueDisplay);
                      double result = calcOperation(
                          selectedOperation!, firstOperand, secondOperand);
                      valueCurrent =
                          '$firstOperand $selectedOperation $secondOperand = $result';
                      valueDisplay = result.toString();
                    } else if (number == 'C') {
                      selectedOperation = null;
                      firstOperand = 0;
                      secondOperand = 0;
                      valueCurrent = '';
                      valueDisplay = '';
                    } else {
                      // Se um número for pressionado, adicione-o ao valor atual
                      valueDisplay += number;
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

double calcOperation(String operation, double valueOne, double valueTwo) {
  double result = 0;
  switch (operation) {
    case '+':
      result = valueOne + valueTwo;

      break;
    case '-':
      result = valueOne - valueTwo;
      break;

    case 'X':
      result = valueOne * valueTwo;
      break;

    case '/':
      result = valueOne / valueTwo;
      break;

    default:
      const AlertDialog(
        actions: [
          Text('Operação inválida: '),
        ],
      );
  }
  return result;
}
