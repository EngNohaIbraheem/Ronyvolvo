import 'package:fatto/exports.dart';

class CartEmpty extends StatelessWidget {
  const CartEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              width: 100.w,
              height: 100.h,
              child: const Image(image: AssetImage(AppAssets.empty),)
          ),
          Text(
            "Your bag is empty",
            style: AppStyles.styleInterMedium16.copyWith(color: AppColors.darkCharcoal),
          ),
          17.vs,
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.4,
            child: CustomButton(
                text: 'SHOP NOW', onPressed: (){

            }
            ),
          )
        ],
      ),
    );
  }
}
