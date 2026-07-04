import 'package:fatto/features/order_mangement/choose_payment/presentation/widgets/choose_payment_body.dart';
import '../../../../../exports.dart';

class ChoosePaymentScreen extends StatelessWidget {
  const ChoosePaymentScreen(
      {super.key, required this.activeStep, required this.onStepTapped});
  final int activeStep;
  final void Function(int) onStepTapped;
  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      isTransparent: false,
      child: ChoosePaymentBody(
        activeStep: activeStep,
        onStepTapped: onStepTapped,
      ),
    );
  }
}
