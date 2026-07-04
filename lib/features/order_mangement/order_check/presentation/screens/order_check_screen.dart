import 'package:fatto/features/order_mangement/order_check/presentation/widgets/order_check_body.dart';

import '../../../../../exports.dart';

class OrderCheckScreen extends StatelessWidget {
  const OrderCheckScreen(
      {super.key, required this.activeStep, required this.onStepTapped});
  final int activeStep;
  final Function(int) onStepTapped;
  @override
  Widget build(BuildContext context) {
    return OrderCheckBody(
      activeStep: activeStep,
      onStepTapped: onStepTapped,
    );
  }
}
