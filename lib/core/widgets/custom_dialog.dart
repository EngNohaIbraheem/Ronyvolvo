import 'package:fatto/exports.dart';

class CustomDialog {
  customshowDialog(BuildContext context,
      {final double? checkCircleColor,
      final double? checkIconSize,
      final double? dialogHeight,
      required Widget child}) {
    showDialog(
        context: context,
        builder: (context) => Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.w),
              child: AlertDialog(
                backgroundColor: AppColors.white,
                insetPadding: EdgeInsets.zero,
                contentPadding: EdgeInsets.zero,
                clipBehavior: Clip.none,
                actions: [
                  Dialog(
                    backgroundColor: AppColors.white,
                    clipBehavior: Clip.none,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                            top: -60,
                            left: 0,
                            right: 0,
                            child: Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    blurRadius: 5,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Center(
                                child: CircleAvatar(
                                  radius: checkCircleColor ?? 13,
                                  backgroundColor: AppColors.primaryColor,
                                  child: Center(
                                    child: SvgPicture.asset(
                                      AppAssets.check,
                                      height: checkIconSize ?? 10,
                                    ),
                                  ),
                                ),
                              ),
                            )),
                        SizedBox(height: dialogHeight ?? 160.h, child: child),
                      ],
                    ),
                  )
                ],
              ),
            ));
  }
}
