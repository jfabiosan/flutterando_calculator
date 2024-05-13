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
    final marginSize = size.height * 0.016;

    final buttonWidth = size.width * 0.25;
    final buttonHeight = size.height * 0.14;

    const double space = 5;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: marginSize, bottom: marginSize),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Gap(space),
              Expanded(
                child: CustomButtom(
                  height: buttonHeight,
                  width: buttonWidth,
                  textButton: 'C',
                  colorButton: Colors.amber,
                  onValueText: numberPressed,
                ),
              ),
              const Gap(space),
              Expanded(
                child: CustomButtom(
                  height: buttonHeight,
                  width: buttonWidth,
                  textButton: '/',
                  colorButton: Colors.amber,
                  onValueText: numberPressed,
                ),
              ),
              const Gap(space),
              Expanded(
                child: CustomButtom(
                  height: buttonHeight,
                  width: buttonWidth,
                  textButton: 'X',
                  colorButton: Colors.amber,
                  onValueText: numberPressed,
                ),
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
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Gap(space),
            Expanded(
              child: CustomButtom(
                height: buttonHeight,
                width: buttonWidth,
                textButton: '7',
                colorButton: Colors.grey,
                onValueText: numberPressed,
              ),
            ),
            const Gap(space),
            Expanded(
              child: CustomButtom(
                height: buttonHeight,
                width: buttonWidth,
                textButton: '8',
                colorButton: Colors.grey,
                onValueText: numberPressed,
              ),
            ),
            const Gap(space),
            Expanded(
              child: CustomButtom(
                height: buttonHeight,
                width: buttonWidth,
                textButton: '9',
                colorButton: Colors.grey,
                onValueText: numberPressed,
              ),
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
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(top: marginSize, bottom: marginSize),
                    child: Row(
                      children: [
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
                  ),
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
                  Padding(
                    padding:
                        EdgeInsets.only(top: marginSize, bottom: marginSize),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                          width: buttonWidth * 2.08,
                          textButton: '0',
                          colorButton: Colors.grey,
                          // width: buttonWidth * 2,
                          onValueText: numberPressed,
                        ),
                        const Gap(space),
                      ],
                    ),
                  ),
                ],
              ),
              Expanded(
                child: CustomButtom(
                  height: buttonHeight * 3.2,
                  width: buttonWidth,
                  textButton: '=',
                  colorButton: Colors.amber,
                  onValueText: numberPressed,
                ),
              ),
              const Gap(space),
            ],
          ),
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
