import 'package:fatto/exports.dart';

import '../../../cart/presentation/cart_screen.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragEnd: (details) {
        if (details.primaryVelocity! < 0) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ProductDetailsScreen(),
            ),
          );
        }
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16.h),
           Text('Peponi', style: AppStyles.styleInterBold18),
          SizedBox(height: 9.h),
           Text('Crochet Bag', style: AppStyles.styleInterBold18),
          SizedBox(height: 9.h),
          Row(
            children: [
              Text('\$ 256.90',
                  style: AppStyles.styleInterMedium13
                      .copyWith(color: AppColors.brickRed)),
              SizedBox(width: 12.w),
              Text(
                '\$ 277.99',
                style: AppStyles.styleInterRegular14.copyWith(
                  color: AppColors.slateGray,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              SizedBox(width: 4.w),
              Text('50% OFF',
                  style: AppStyles.styleInterRegular14.copyWith(
                    color: AppColors.slateGray,
                  )),
            ],
          ),
          SizedBox(height: 16.h),
          Container(
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(AppAssets.heart),
                Padding(
                  padding: EdgeInsets.only(right: 12.w),
                  child: const MoreDetailsButton(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MoreDetailsButton extends StatelessWidget {
  const MoreDetailsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      width: MediaQuery.sizeOf(context).width * 0.35,
      height: MediaQuery.sizeOf(context).height * 0.05,
      text: AppStrings.moreDetails,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder:
              (context) => const CartScreen()),
        );
      },
      borderRadius: 4.0,
    );
  }
}
