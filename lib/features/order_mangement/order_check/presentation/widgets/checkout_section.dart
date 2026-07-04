import 'package:fatto/exports.dart';
import 'package:fatto/features/order_mangement/order_check/presentation/widgets/custom_circle_dialog.dart';

import '../../../../../core/widgets/custom_dialog.dart';

class CheckOutSection extends StatelessWidget {
  const CheckOutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
          ),
          child: Row(
            children: [
              Text(
                "Sub total",
                style: AppStyles.styleInterMedium9
                    .copyWith(color: AppColors.black),
              ),
              7.hs,
              Text(
                "(4 product)",
                style: AppStyles.styleInterMedium9
                    .copyWith(color: AppColors.black),
              ),
              const Spacer(),
              Text(
                "\$ 797.8",
                style: AppStyles.styleInterMedium13,
              ),
              12.hs,
            ],
          ),
        ),
        16.vs,
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
          ),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Shipping",
                    style: AppStyles.styleInterRegular8
                        .copyWith(color: AppColors.black),
                  ),
                  7.hs,
                  Text(
                    "From OYAYUBI",
                    style: AppStyles.styleInterRegular6
                        .copyWith(color: AppColors.slateGray),
                  ),
                ],
              ),
              const Spacer(),
              Text(
                "FREE",
                style: AppStyles.styleInterRegular10
                    .copyWith(color: AppColors.slateGray),
              ),
              21.hs,
            ],
          ),
        ),
        6.vs,
        const Divider(
          color: AppColors.silver,
          thickness: 1,
        ),
        6.vs,
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
          ),
          child: Row(
            children: [
              Text(
                "Total",
                style: AppStyles.styleInterMedium13
                    .copyWith(color: AppColors.black),
              ),
              const Spacer(),
              Text(
                "\$ 797.8",
                style: AppStyles.styleInterMedium13
                    .copyWith(color: AppColors.primaryColor),
              ),
              12.hs,
            ],
          ),
        ),
        26.vs,
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.9,
          height: 36.h,
          child: CustomButton(
            text: 'CONFIRM ORDER',
            onPressed: () {
              // Show loading dialog
              showCustomLoadingDialog(context);

              // After 3 seconds, show the custom dialog
              Future.delayed(const Duration(seconds: 3), () {
                Navigator.of(context).pop();
                CustomDialog().customshowDialog(
                  context, checkCircleColor: 25,
                  dialogHeight: 140.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      40.vs,
                      Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          'Done!',
                          style: AppStyles.styleInterBold20,
                        ),
                      ),
                      5.vs,
                      Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          'You card has been successfully charged',
                          style: AppStyles.styleInterSemiBold12,
                        ),
                      ),
                      20.vs,
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: 163.w,
                          height: 40.h,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFE7E8EB),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(11),
                            ),
                          ),
                          child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Track My Order',
                                style: AppStyles.styleInterRegular16,
                              )),
                        ),
                      ),
                    ],
                  ), // Customize this
                );
              });
            },
          ),
        ),
        44.vs,
      ],
    );
  }
}
