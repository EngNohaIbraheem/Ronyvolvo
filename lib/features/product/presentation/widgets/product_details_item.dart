import 'package:fatto/exports.dart';
import 'package:fatto/features/product/presentation/widgets/colors_widget.dart';
import 'package:fatto/features/product/presentation/widgets/description_widget.dart';

class ProductDetailsItem extends StatelessWidget {
  const ProductDetailsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 21.h, right: 19.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text('Peponi', style: AppStyles.styleInterBold18),
                  SizedBox(height: 1.h),
                   Text('Crochet Bag', style: AppStyles.styleInterBold18),
                ],
              ),
              Column(
                children: [
                  Text(
                    '\$ 256.90',
                    style: AppStyles.styleInterRegular22_5.copyWith(
                      color: AppColors.brickRed,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '\$ 277.99',
                        style: AppStyles.styleInterRegular11.copyWith(
                          color: AppColors.slateGray,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      SizedBox(width: 4.w),
                      Text(
                        '50% OFF',
                        style: AppStyles.styleInterRegular11.copyWith(
                          color: AppColors.slateGray,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 24.h),
           Text(
            'COLOR',
            style: AppStyles.styleInterMedium15,
          ),
          SizedBox(height: 8.h),
          const ColorWidget(),
          SizedBox(height: 24.h),
          const DescriptionWidget(
            text:
                '- Celana Jeans dengan Pola Mom Fit \n- Bahan Katun Denim Tidak Melar\n- Pinggang Elastis memakai karet \n- Elastisitas/Melar hingga 2-3 cm\n- High Waist\n- Resetling\n- Saku di depan dan belakang\n- Nyaman dipakai',
          ),
          SizedBox(height: 34.h),
          Container(
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(AppAssets.heart),
                Padding(
                  padding: EdgeInsets.only(right: 12.w),
                  child: const CustomOrangeButton(
                    text: AppStrings.order,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30.h),
          Padding(
            padding: EdgeInsets.all(8.w),
            child: Container(
              width: double.infinity,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 0.50.w,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: const Color(0xFF777777),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 16.h),
           Center(
            child: Text(
              AppStrings.maybeYouLikeItToo,
              style: AppStyles.stylePoppinsSemiBold14,
            ),
          ),
          SizedBox(height: 24.h),
        ],
      ),
    );
  }
}

class CustomOrangeButton extends StatelessWidget {
  const CustomOrangeButton({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      width: MediaQuery.sizeOf(context).width * 0.35,
      height: MediaQuery.sizeOf(context).height * 0.05,
      text: text,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ProductDetailsScreen()),
        );
      },
      borderRadius: 4.0,
    );
  }
}
