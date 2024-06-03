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
            child: Keyboard(numberPressed: (String number) {
              setState(
                () {
                  keyPress(number);
                },
              );
            }, onEqualPressed: () {
              setState(() {
                keyPress('=');
              });
            }),
          )
        ],
      ),
    );
  }

  void keyPress(String number) {
    if (number == '+' || number == '-' || number == 'X' || number == '/') {
      if (valueDisplay.isEmpty) {
        return;
      }
      // Se um operador for pressionado, armazene o primeiro operando e o tipo de operação
      firstOperand = double.parse(valueDisplay);
      selectedOperation = number;
      valueDisplay = '';
      // Limpe o visor para inserir o segundo operando
    } else if (number == '=') {
      if (valueDisplay.isEmpty || selectedOperation == null) {
        return;
      }
      // Se "=" for pressionado, calcule o resultado
      secondOperand = double.parse(valueDisplay);
      double result =
          calcOperation(selectedOperation!, firstOperand, secondOperand);
      valueCurrent =
          '${formatNumber(firstOperand)} $selectedOperation ${formatNumber(secondOperand)} = ${formatNumber(result)}';
      valueDisplay = formatNumber(result);
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
  }
}

//Formatar os numeros apresentados no display
String formatNumber(double num) {
  return (num % 1 == 0) ? num.toInt().toString() : num.toString();
}

///calculo das operacoes
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
