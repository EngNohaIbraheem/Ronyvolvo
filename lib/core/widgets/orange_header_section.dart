
import 'package:fatto/config/routes/app_routes_helper.dart';
import 'package:fatto/exports.dart';

class OrangeHeaderSection extends StatelessWidget {
  const OrangeHeaderSection({super.key,this.title,this.numberOfItems,required this.isEdit});
  final  String? title ;
  final String? numberOfItems ;
  final bool isEdit ;
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 55.h,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColors.primaryColor,
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: (){
              canPop(context);
            },
            icon: SvgPicture.asset(AppAssets.arrowLeft),
            padding: EdgeInsetsDirectional.zero,
          ),
          16.hs,
         title==null?0.vs: Text(
            title ?? '',
            style: AppStyles.stylePoppinsSemiBold16.copyWith(color: AppColors.white),
          ),
          5.hs,
          numberOfItems==null ?0.vs: Text(
            numberOfItems ?? '',
            style: AppStyles.stylePoppinsRegular11.copyWith(color: AppColors.white),
          ),
          const Spacer(),
          isEdit ?  TextButton(
              onPressed: (){},
              child: Text(
                'Edit',
                style: AppStyles.styleInterMedium14.copyWith(color: AppColors.white),
              )
          ) : 0.vs
        ],
      ),
    );
  }
}
