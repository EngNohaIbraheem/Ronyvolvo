import 'package:fatto/exports.dart';
import 'package:fatto/features/order_mangement/order/logic/my_stepper_logic.dart';

class MyStepperUI extends StatelessWidget {
  final MyStepperLogic step;
  final Color activeColor;
  final Color inactiveColor;
  final Color completedColor;

  const MyStepperUI(
      {super.key,
      required this.step,
      required this.activeColor,
      required this.inactiveColor,
      required this.completedColor});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: step,
      builder: (context, _) {
        return SizedBox(
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(3, (index) {
              return _buildStep(
                index: index,
                step: step,
                activeColor: activeColor,
                inactiveColor: inactiveColor,
                completedColor: completedColor,
              );
            }),
          ),
        );
      },
    );
  }

  Widget _buildStep({
    required int index,
    required MyStepperLogic step,
    required Color activeColor,
    required Color inactiveColor,
    required Color completedColor,
  }) {
    bool isActive = step.currentStep == index;
    bool isCompleted = step.currentStep > index;

    Color circleColor =
        isCompleted ? completedColor : (isActive ? activeColor : inactiveColor);
    Color lineColor = isCompleted ? completedColor : inactiveColor;

    return Column(mainAxisSize: MainAxisSize.min, children: [
      Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
        if (index != 0)
          Container(
            width: 30,
            height: 2,
            color: lineColor,
          ),
        Column(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: circleColor,
              child: Text(
                '${index + 1}',
                style: const TextStyle(color: Colors.white),
              ),
            ),
            Text(
              _stepTitle(index),
              style: TextStyle(
                color: isActive ? activeColor : inactiveColor,
              ),
            ),
          ],
        ),
        if (index != 2)
          Container(
            width: 30,
            height: 2,
            color: lineColor,
          ),
      ]),
    ]);
  }

  String _stepTitle(int index) {
    switch (index) {
      case 0:
        return 'Delivery';
      case 1:
        return 'Payment';
      case 2:
        return 'Order check';
      default:
        return '';
    }
  }
}
