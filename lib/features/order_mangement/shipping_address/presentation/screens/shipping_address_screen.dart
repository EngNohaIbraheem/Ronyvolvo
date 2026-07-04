import '../../../../../exports.dart';

class ShippingAddressScreen extends StatelessWidget {
  final int activeStep;
  final void Function(int) onStepTapped;

  const ShippingAddressScreen({
    super.key,
    required this.activeStep,
    required this.onStepTapped,
  });

  @override
  Widget build(BuildContext context) {
    return ShippingAddressBody(
      activeStep: activeStep,
      onStepTapped: onStepTapped,
    );
  }
}
