import 'package:fatto/features/order_mangement/choose_payment/data/voucher_model.dart';
import 'package:fatto/features/order_mangement/choose_payment/presentation/widgets/custom_dashed_line.dart';

import '../../../../../exports.dart';

class VoucherItem extends StatelessWidget {
  final VoucherModel voucher;

  const VoucherItem({
    super.key,
    required this.voucher,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 360.w,
          height: 140.h,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1.5, color: AppColors.primaryColor),
              borderRadius: BorderRadius.circular(12.r),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x29000000),
                blurRadius: 8,
                offset: Offset(0, 4),
                spreadRadius: 2,
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 8.w, left: 8.w, right: 8.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      voucher.title,
                      style: AppStyles.styleInterBold18
                          .copyWith(color: AppColors.primaryColor),
                    ),
                    Container(
                      width: 120.w,
                      height: 25.h,
                      decoration: ShapeDecoration(
                        color: const Color(0x19BD6633),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.r),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Valid Until ${voucher.validityDate}',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4.h),
                const DashedLine(
                  color: AppColors.primaryColor,
                  height: 15,
                  dashWidth: 5,
                  dashSpace: 3.5,
                ),
                SizedBox(height: 10.h),
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            voucher.iconPath,
                            height: 24.h,
                            width: 24.w,
                          ),
                          SizedBox(width: 8.w),
                          Text(
                            voucher.voucherName,
                            style: AppStyles.styleInterBold18,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            voucher.description,
                            style: AppStyles.styleInterBold14,
                          ),
                          CustomButton(
                            borderRadius: 6.r,
                            height: 35.h,
                            width: 80.w,
                            text: 'Apply',
                            style: AppStyles.styleInterMedium14
                                .copyWith(color: AppColors.white),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 60.h,
          left: -18.w,
          child: Container(
            width: 32.w,
            height: 32.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.white,
              border: Border.all(
                color: AppColors.primaryColor,
                width: 1.5,
              ),
            ),
          ),
        ),
        Positioned(
          top: 60.h,
          right: -18.w,
          child: Container(
            width: 32.w,
            height: 32.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.white,
              border: Border.all(
                color: AppColors.primaryColor,
                width: 1.5,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
