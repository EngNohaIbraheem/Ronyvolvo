import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fatto/features/order_mangement/choose_payment/data/voucher_model.dart';
import 'package:fatto/features/order_mangement/choose_payment/presentation/widgets/custom_divider.dart';
import 'package:fatto/features/order_mangement/choose_payment/presentation/widgets/custom_tile.dart';
import 'package:fatto/features/order_mangement/choose_payment/presentation/widgets/voucher_item.dart';
import 'package:fatto/features/order_mangement/order_check/presentation/screens/order_check_screen.dart';

import '../../../../../exports.dart';

class ChoosePaymentItem extends StatelessWidget {
  final int activeStep;
  final Function(int) onStepTapped;

  const ChoosePaymentItem({
    super.key,
    required this.activeStep,
    required this.onStepTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        children: [
          const CustomDivider(),
          CustomTile(
            titleText: 'Credit/Debit Card',
            subtitleText: 'Visa, Master Card',
            icon: SvgPicture.asset(
              AppAssets.arrowRight,
              height: 30.h,
              width: 30.w,
            ),
          ),
          SizedBox(
            height: 33.h,
          ),
          const CustomDivider(),
          CustomTile(
            titleText: 'Via bank transfer',
            icon: SvgPicture.asset(
              AppAssets.arrowRight,
              height: 30.h,
              width: 30.w,
            ),
          ),
          SizedBox(
            height: 33.h,
          ),
          const CustomDivider(),
          CustomTile(
            titleText: 'Pay on the spot',
            icon: SvgPicture.asset(
              AppAssets.arrowRight,
              height: 30.h,
              width: 30.w,
            ),
          ),
          SizedBox(
            height: 51.h,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
              height: 30.h,
              width: 120.w,
              child: CustomButton(
                text: 'Add Voucher',
                style: AppStyles.styleNunitoSansRegular12
                    .copyWith(color: AppColors.primaryColor),
                onPressed: () {
                  _showVouchersModal(context);
                },
                backgroundColor: Colors.transparent,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showVouchersModal(BuildContext context) {
    final voucher1 = VoucherModel(
      voucherName: 'First Purchase',
      title: 'Voucher',
      validityDate: '5.16.20',
      iconPath: AppAssets.firstPurchase,
      description: '5% off for your next order',
    );

    final voucher2 = VoucherModel(
      title: 'Voucher',
      validityDate: '6.20.20',
      iconPath: AppAssets.giftBox,
      description: '10% off your next purchase',
      voucherName: 'Gift From Customer Care',
    );

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(10.r),
            ),
          ),
          padding: EdgeInsets.all(16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                color: const Color(0xFFF8FAFF),
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: Text('Active Vouchers',
                      style: AppStyles.styleInterExtraBold26),
                ),
              ),
              SizedBox(
                height: 9.h,
              ),
              VoucherItem(
                voucher: voucher1,
              ),
              SizedBox(height: 16.h),
              VoucherItem(
                voucher: voucher2,
              ),
            ],
          ),
        );
      },
    );
  }
}
