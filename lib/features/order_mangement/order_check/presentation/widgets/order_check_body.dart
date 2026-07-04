import 'package:fatto/core/widgets/custom_stepper.dart';
import 'package:fatto/features/order_mangement/order_check/presentation/widgets/checkout_section.dart';
import 'package:fatto/core/widgets/cart_list_section.dart';
import '../../../../../exports.dart';

class OrderCheckBody extends StatelessWidget {
  final int activeStep;
  final Function(int) onStepTapped;

  const OrderCheckBody({
    super.key,
    required this.activeStep,
    required this.onStepTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        32.vs,
        Text(
          'ORDER CHECK',
          style: AppStyles.styleInterMedium15.copyWith(color: AppColors.black),
        ),
        24.vs,
        CartListSection(),
        42.vs,
        const CheckOutSection(),
      ],
    );
  }
}
