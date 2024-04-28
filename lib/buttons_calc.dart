import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'custom_buttom.dart';

class ButtonsCalc extends StatelessWidget {
  const ButtonsCalc({
    super.key,
    required this.numberPressed,
  });

  final ValueSetter<double> numberPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 5, bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButtom(
                textButton: 'C',
                colorButton: Colors.amber,
              ),
              Gap(5),
              CustomButtom(
                textButton: '/',
                colorButton: Colors.amber,
              ),
              Gap(5),
              CustomButtom(
                textButton: 'X',
                colorButton: Colors.amber,
              ),
              Gap(5),
              CustomButtom(
                textButton: '+',
                colorButton: Colors.amber,
              ),
            ],
          ),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButtom(
              textButton: '7',
              colorButton: Colors.grey,
            ),
            Gap(5),
            CustomButtom(
              textButton: '8',
              colorButton: Colors.grey,
            ),
            Gap(5),
            CustomButtom(
              textButton: '9',
              colorButton: Colors.grey,
            ),
            Gap(5),
            CustomButtom(
              textButton: '-',
              colorButton: Colors.amber,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  child: Row(
                    children: [
                      CustomButtom(
                        textButton: '4',
                        colorButton: Colors.grey,
                      ),
                      Gap(5),
                      CustomButtom(
                        textButton: '5',
                        colorButton: Colors.grey,
                      ),
                      Gap(5),
                      CustomButtom(
                        textButton: '6',
                        colorButton: Colors.grey,
                      ),
                      Gap(5),
                    ],
                  ),
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () => numberPressed(1),
                      child: const CustomButtom(
                        textButton: '1',
                        colorButton: Colors.grey,
                      ),
                    ),
                    const Gap(5),
                    InkWell(
                      onTap: () {
                        numberPressed(2);
                      },
                      child: const CustomButtom(
                        textButton: '2',
                        colorButton: Colors.grey,
                      ),
                    ),
                    const Gap(5),
                    const CustomButtom(
                      textButton: '3',
                      colorButton: Colors.grey,
                    ),
                    const Gap(5),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomButtom(
                        textButton: '.',
                        colorButton: Colors.amber,
                      ),
                      Gap(5),
                      CustomButtom(
                        textButton: '0',
                        colorButton: Colors.grey,
                        width: 105,
                      ),
                      Gap(5),
                    ],
                  ),
                ),
              ],
            ),
            const CustomButtom(
              textButton: '=',
              colorButton: Colors.amber,
              height: 160,
            ),
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

    case '*':
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
