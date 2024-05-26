import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'custom_buttom.dart';

class Keyboard extends StatelessWidget {
  const Keyboard({
    super.key,
    required this.numberPressed,
  });
  final void Function(String) numberPressed;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    final buttonWidth = size.width * 0.24;
    final buttonZero = size.width * 0.48;
    final buttonHeight = size.height * 0.155;
    final buttonEquals = size.height * 0.468;

    const double space = 1;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            const Gap(space),
            CustomButtom(
              height: buttonHeight,
              width: buttonWidth,
              textButton: 'C',
              colorButton: Colors.amber,
              onValueText: numberPressed,
            ),
            const Gap(space),
            CustomButtom(
              height: buttonHeight,
              width: buttonWidth,
              textButton: '/',
              colorButton: Colors.amber,
              onValueText: numberPressed,
            ),
            const Gap(space),
            CustomButtom(
              height: buttonHeight,
              width: buttonWidth,
              textButton: 'X',
              colorButton: Colors.amber,
              onValueText: numberPressed,
            ),
            const Gap(space),
            Expanded(
              child: CustomButtom(
                height: buttonHeight,
                width: buttonWidth,
                textButton: '+',
                colorButton: Colors.amber,
                onValueText: numberPressed,
              ),
            ),
            const Gap(space),
          ],
        ),
        const Gap(space),
        Row(
          children: [
            const Gap(space),
            CustomButtom(
              height: buttonHeight,
              width: buttonWidth,
              textButton: '7',
              colorButton: Colors.grey,
              onValueText: numberPressed,
            ),
            const Gap(space),
            CustomButtom(
              height: buttonHeight,
              width: buttonWidth,
              textButton: '8',
              colorButton: Colors.grey,
              onValueText: numberPressed,
            ),
            const Gap(space),
            CustomButtom(
              height: buttonHeight,
              width: buttonWidth,
              textButton: '9',
              colorButton: Colors.grey,
              onValueText: numberPressed,
            ),
            const Gap(space),
            Expanded(
              child: CustomButtom(
                height: buttonHeight,
                width: buttonWidth,
                textButton: '-',
                colorButton: Colors.amber,
                onValueText: numberPressed,
              ),
            ),
            const Gap(space),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(space),
                Row(
                  children: [
                    const Gap(space),
                    CustomButtom(
                      height: buttonHeight,
                      width: buttonWidth,
                      textButton: '4',
                      colorButton: Colors.grey,
                      onValueText: numberPressed,
                    ),
                    const Gap(space),
                    CustomButtom(
                      height: buttonHeight,
                      width: buttonWidth,
                      textButton: '5',
                      colorButton: Colors.grey,
                      onValueText: numberPressed,
                    ),
                    const Gap(space),
                    CustomButtom(
                      height: buttonHeight,
                      width: buttonWidth,
                      textButton: '6',
                      colorButton: Colors.grey,
                      onValueText: numberPressed,
                    ),
                  ],
                ),
                const Gap(space),
                Row(
                  children: [
                    const Gap(space),
                    CustomButtom(
                      height: buttonHeight,
                      width: buttonWidth,
                      textButton: '1',
                      colorButton: Colors.grey,
                      onValueText: numberPressed,
                    ),
                    const Gap(space),
                    CustomButtom(
                      height: buttonHeight,
                      width: buttonWidth,
                      textButton: '2',
                      colorButton: Colors.grey,
                      onValueText: numberPressed,
                    ),
                    const Gap(space),
                    CustomButtom(
                      height: buttonHeight,
                      width: buttonWidth,
                      textButton: '3',
                      colorButton: Colors.grey,
                      onValueText: numberPressed,
                    ),
                    const Gap(space),
                  ],
                ),
                const Gap(space),
                Row(
                  children: [
                    const Gap(space),
                    CustomButtom(
                      height: buttonHeight,
                      width: buttonWidth,
                      textButton: '.',
                      colorButton: Colors.amber,
                      onValueText: numberPressed,
                    ),
                    const Gap(space),
                    CustomButtom(
                      height: buttonHeight,
                      width: buttonZero,
                      textButton: '0',
                      colorButton: Colors.grey,
                      onValueText: numberPressed,
                    ),
                    const Gap(space),
                  ],
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: space),
                child: CustomButtom(
                  height: buttonEquals,
                  textButton: '=',
                  colorButton: Colors.amber,
                  onValueText: numberPressed,
                ),
              ),
            ),
            const Gap(space),
          ],
        ),
      ],
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
