import 'package:flutter/material.dart';
import '../../../../../exports.dart';
import 'package:fatto/core/widgets/custom_stepper.dart'; // Adjust import path as needed

class ChoosePaymentBody extends StatelessWidget {
  final int activeStep;
  final void Function(int) onStepTapped;

  const ChoosePaymentBody({
    super.key,
    required this.activeStep,
    required this.onStepTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        40.vs,
        Text(
          'CHOOSE PAYMENT',
          style: AppStyles.styleInterMedium15.copyWith(color: AppColors.black),
        ),
        SizedBox(
          height: 100.h,
        ),
        ChoosePaymentItem(
          activeStep: activeStep,
          onStepTapped: onStepTapped,
        ),
      ],
    );
  }
}
