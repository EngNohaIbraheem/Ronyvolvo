import 'package:fatto/config/routes/app_routes_helper.dart';

import '../../../../exports.dart';

class FavoriteListSection extends StatelessWidget {
  const FavoriteListSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child:ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            itemBuilder: (context,index){
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    alignment: AlignmentDirectional.bottomStart,
                    children: [
                      Container(
                        height: 129.h,
                        width: 105.w,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        decoration:  BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: const Image(image: AssetImage(AppAssets.shawl),fit: BoxFit.fill,),
                      ),
                      Positioned(
                        bottom: 5.h,
                        left: 5.w,
                        child: GestureDetector(
                          onTap:(){
                            _showMyDialog(context);
                          },
                          child: Container(
                            width: 35.w,
                            height: 35.h,
                            padding: EdgeInsets.all(8.r),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.white,
                            ),
                            child: SvgPicture.asset(AppAssets.delete),
                          ),
                        ),
                      )
                    ],
                  ),
                  10.hs,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      11.vs,
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width*0.55,
                        child: Text(
                          'Lorem ipsum dolor sit amet consectetur.',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: AppStyles.styleInterRegular12.copyWith(color: AppColors.black),
                        ),
                      ),
                      11.vs,
                      Row(
                        children: [
                          Text(
                            '\$17.00',
                            style: AppStyles.styleInterMedium14.copyWith(color: AppColors.rosePink,decoration: TextDecoration.lineThrough ,decorationColor: AppColors.rosePink),

                          ),
                          16.hs,
                          Text(
                            '\$17.00',
                            style: AppStyles.styleInterBold14.copyWith(color: AppColors.gunmetal),
                          ),
                        ],
                      ),
                      13.vs,
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width*0.55,
                        child: Row(
                          children: [
                            Container(
                              width: 54.w,
                              height: 25.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.r),
                                color: AppColors.primaryColor.withOpacity(0.3),
                              ),
                              child: Center(
                                child: Text(
                                  'Pink',
                                  style: AppStyles.styleInterMedium14.copyWith(color: AppColors.black),
                                ),
                              ),
                            ),
                            6.hs,
                            Container(
                              width: 54.w,
                              height: 25.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.r),
                                color: AppColors.primaryColor.withOpacity(0.3),
                              ),
                              child: Center(
                                child: Text(
                                  'M',
                                  style: AppStyles.styleInterMedium14.copyWith(color: AppColors.black),
                                ),
                              ),
                            ),
                            const Spacer(),
                            GestureDetector(
                                onTap: (){}, child: SvgPicture.asset(AppAssets.add)
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              );
            },
            separatorBuilder: (context,index){
              return 27.vs;
            },
            itemCount: 10
        )
    );
  }
  void _showMyDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(
            child: Text(
              AppStrings.areYouSureWantedToDelete,
              style: AppStyles.styleInterRegular16,
              textAlign: TextAlign.center,
            ),

          ),
          actions: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 100.w,
                  child: CustomButton(
                    text: AppStrings.no,
                    backgroundColor: const Color(0xff9E9E9E),
                    borderColor: Colors.transparent,
                    onPressed: () {
                      canPop(context);
                    },
                  ),
                ),
                SizedBox(
                  width: 100.w,
                  child: CustomButton(text: AppStrings.yes, onPressed: () {  canPop(context); },
                  ),
                ),
              ],
            )
          ],
        );
      },
    );
  }

}
