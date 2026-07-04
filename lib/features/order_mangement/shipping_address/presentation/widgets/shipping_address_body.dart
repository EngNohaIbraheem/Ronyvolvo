import 'package:flutter/material.dart';
import '../../../../../exports.dart';
import 'package:fatto/core/widgets/custom_stepper.dart'; // Adjust import path as needed

class ShippingAddressBody extends StatelessWidget {
  final int activeStep;
  final void Function(int) onStepTapped;

  const ShippingAddressBody({
    super.key,
    required this.activeStep,
    required this.onStepTapped,
  });

  @override
  Widget build(BuildContext context) {
    List<DeliveryAddressModel> addresses = [
      DeliveryAddressModel(
        firstName: 'Alwis',
        lastName: 'Suryatmaja',
        address: 'JI. Sidodadi',
        state: 'Riau',
        city: 'Pekanbaru',
        postalCode: '28294',
        phoneNumber: '+628222684467967',
      ),
    ];


    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        50.vs,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Shipping address', style: AppStyles.stylePoppinsSemiBold16),
              GestureDetector(
                onTap: () {
                  _showModalBottomSheet(context);
                },
                child: Text(
                  'Change',
                  style: AppStyles.styleInterMedium15
                      .copyWith(color: AppColors.primaryColor),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              ShippingAddressWidget(addresses: addresses),
              Text('Express Delivery', style: AppStyles.stylePoppinsSemiBold16),
              const SizedBox(height: 5),
              Text('1-2 Business days', style: AppStyles.stylePoppinsRegular14),
            ],
          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: CustomButton(
            text: 'PROCEED TO PAYMENT',
            onPressed: () {
              onStepTapped(1); 
            },
            height: 40.h,
            borderRadius: 4.r,
          ),
        ),
      ],
    );
  }

  void _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      enableDrag: true,
      isDismissible: true,
      builder: (BuildContext context) {
        return Stack(
          children: [
            CustomBackgroundTapDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(),
            ),
            const Align(
              alignment: Alignment.center,
              child: CustomDeliveryAddressModal(),
            ),
          ],
        );
      },
    );
  }
}
