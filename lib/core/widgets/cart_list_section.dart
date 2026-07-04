import 'package:fatto/config/routes/app_routes_helper.dart';
import 'package:fatto/exports.dart';

class CartListSection extends StatelessWidget {
  CartListSection({super.key});
  final List<String> size = ['s', 'm', 'l', 'xl', 'xxl'];
  final List<String> quantity = ['1', '2', '3', '4'];

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.separated(
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                  child: Column(children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                              width: 100.w,
                              height: 100.h,
                              child: const Image(
                                image: AssetImage(AppAssets.item1),
                                fit: BoxFit.fill,
                              )),
                          16.hs,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: MediaQuery.sizeOf(context).width * 0.6,
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Corchet Dress",
                                          style: AppStyles.styleInterRegular13
                                              .copyWith(color: AppColors.black),
                                        ),
                                        3.vs,
                                        Text(
                                          "Orange elegant",
                                          style: AppStyles.styleInterRegular13
                                              .copyWith(
                                                  color: AppColors.silver),
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "\$ 398.90",
                                          style: AppStyles.styleInterRegular13
                                              .copyWith(
                                                  color:
                                                      AppColors.primaryColor),
                                        ),
                                        3.vs,
                                        Text(
                                          "\$ 402.00",
                                          style: AppStyles.styleInterRegular13
                                              .copyWith(
                                                  color: AppColors.silver,
                                                  decoration: TextDecoration
                                                      .lineThrough),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),

                              SizedBox(
                                width: MediaQuery.sizeOf(context).width * 0.6,
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Size",
                                            style: AppStyles.styleInterRegular9
                                                .copyWith(
                                                    color: AppColors.slateGray),
                                          ),
                                          3.vs,
                                          Container(
                                            height: 20.h,
                                            width: 40.w,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: AppColors.charcoal,
                                                  width: 0.4),
                                            ),
                                            child: Center(
                                              child: DropdownButton<String>(
                                                dropdownColor: Colors.white,
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 2.w),
                                                isExpanded: true,
                                                underline: 0.vs,
                                                iconSize: 18.r,
                                                hint: Text(size[0],
                                                  style: AppStyles
                                                      .stylePoppinsRegular8_9,
                                                  maxLines: 1,
                                                  overflow: TextOverflow
                                                      .ellipsis,
                                                ),
                                                items: size.map((String item) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: item,
                                                    child: Text(item),
                                                  );
                                                }).toList(),
                                                onChanged:
                                                    (String? newValue) {},
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      9.hs,
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Quantity",
                                            style: AppStyles.styleInterRegular9
                                                .copyWith(
                                                    color: AppColors.slateGray),
                                          ),
                                          3.vs,
                                          Container(
                                            height: 20.h,
                                            width: 40.w,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: AppColors.charcoal,
                                                  width: 0.4),
                                            ),
                                            child: Center(
                                                child: DropdownButton<String>(
                                                  dropdownColor: Colors.white,
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 4.w),
                                              isExpanded: true,
                                                  iconSize: 18.r,
                                              underline: 0.vs,
                                              hint: Text(
                                                quantity[0],
                                                style: AppStyles
                                                    .stylePoppinsRegular8_9,
                                                overflow: TextOverflow
                                                    .ellipsis,
                                              ),
                                              items:
                                                  quantity.map((String item) {
                                                return DropdownMenuItem<String>(
                                                  value: item,
                                                  child: Text(item),
                                                );
                                              }).toList(),
                                              onChanged: (String? newValue) {

                                              },
                                            )),
                                          )
                                        ],
                                      ),
                                      const Spacer(),
                                      IconButton(
                                        onPressed: () {
                                          _showMyDialog(context);
                                        },
                                        icon: SvgPicture.asset(
                                          AppAssets.deleteBin,
                                          height: 25.h,
                                          width: 25.w,
                                        ),
                                      ),
                                    ]),
                              ),
                            ],
                          )
                        ])
                  ]));
            },
            separatorBuilder: (context, index) {
              return 8.vs;
            },
            itemCount: 20));
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
                  child: CustomButton(
                    text: AppStrings.yes,
                    onPressed: () {
                      canPop(context);
                    },
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
