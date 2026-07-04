import 'package:fatto/exports.dart';

import '../../../../config/routes/app_routes_helper.dart';

class TotalAndCheckoutSection extends StatelessWidget {
  const TotalAndCheckoutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          child: Column(
            children: [
              Row(
                children: [
                  11.hs,
                 SizedBox(
                   width: MediaQuery.sizeOf(context).width * 0.6,
                   child: TextFormField(
                     decoration: InputDecoration(
                       hintText: 'Voucher/gift card',
                       border: InputBorder.none,
                       contentPadding: EdgeInsets.zero,
                       hintStyle: AppStyles.styleInterRegular9.copyWith(color: AppColors.taupeGray),
                     ),
                   ),
                 ),
                  const Spacer(),
                  CustomButton(width: 85.w,height: 30.h,borderRadius: 4.r,text: 'Apply', onPressed: (){}),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Sub total",
                    style: AppStyles.styleInterRegular9.copyWith(color: AppColors.black),
                  ),
                  7.hs,
                  Text(
                    "(4 product)",
                    style: AppStyles.styleInterRegular9.copyWith(color: AppColors.black),
                  ),
                  const Spacer(),
                  Text(
                    "\$ 797.8",
                    style: AppStyles.styleInterRegular12_78.copyWith(color: AppColors.primaryColor),
                  ),
                  12.hs,
                ],
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Shipping",
                        style: AppStyles.styleInterRegular8.copyWith(color: AppColors.black),
                      ),
                      7.hs,
                      Text(
                        "From OYAYUBI",
                        style: AppStyles.styleInterRegular6.copyWith(color: AppColors.slateGray),
                      ),

                    ],
                  ),
                  const Spacer(),
                  Text(
                    "FREE",
                    style: AppStyles.styleInterRegular10.copyWith(color: AppColors.slateGray),
                  ),
                  21.hs,
                ],
              ),
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
          padding:  EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          child: Row(
            children: [
              Text(
                "Total",
                style: AppStyles.styleInterRegular13.copyWith(color: AppColors.black),
              ),
              const Spacer(),
              Text(
                "\$ 797.8",
                style: AppStyles.styleInterRegular12_78.copyWith(color: AppColors.primaryColor),
              ),
              12.hs,
            ],
          ),
        ),
        26.vs,
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.9,
          child: CustomButton(
              text: 'CHECKOUT',
              onPressed: (){
                push(context: context, route: Routes.favoriteScreen);

              },
            borderRadius: 6.r,
          ),
        )
      ],
    );
  }
}
