import 'package:fatto/exports.dart';
import 'package:fatto/features/review/ui/widgets/button_sheet_review.dart';
import 'package:fatto/features/review/ui/widgets/review_list_view.dart';
import 'profile_row.dart';
import 'package:simple_progress_indicators/simple_progress_indicators.dart';
import 'tracking_card.dart';

class ReviewPageBody extends StatefulWidget {
  const ReviewPageBody({super.key});

  @override
  State<ReviewPageBody> createState() => _ReviewPageBodyState();
}

class _ReviewPageBodyState extends State<ReviewPageBody> {
  Color middleCircleAvatarColor = AppColors.paleBlue;
  Color lastCircleAvatarColor = AppColors.paleBlue;
  Color changeBetweenColors = AppColors.product35ColorColor;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    coloredMiddle();
    coloredLast();
    changeColorsAfterFinish();
    showTheModelSheet();
  }

  coloredMiddle() {
    Future.delayed(const Duration(milliseconds: 6250), () {
      setState(() {
        middleCircleAvatarColor = AppColors.emeraldGreen;
      });
    });
  }

  coloredLast() {
    Future.delayed(const Duration(milliseconds: 12250), () {
      setState(() {
        lastCircleAvatarColor = AppColors.darkGreen;
      });
    });
  }

  changeColorsAfterFinish() {
    Future.delayed(const Duration(milliseconds: 12500), () {
      setState(() {
        changeBetweenColors = AppColors.primaryColor.withOpacity(.1);
      });
    });
  }

  showTheModelSheet() {
    Future.delayed(const Duration(milliseconds: 12800), () {
      showModalBottomSheet(
          isScrollControlled: true,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          context: context,
          builder: (context) {
            return const ButtonSheetReview();
          });
    });
  }

  @override
  Widget build(BuildContext context) {
    final int duration = (6) * 2;
    return SafeArea(
        child: Column(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(15.w, 27.h, 20.w, 12.h),
          child: const ProfileRow(),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(24..w, 12.h, 20.w, 32.h),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 14.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.paleBlue,
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: ProgressBarAnimation(
                    height: 10.h,
                    width: double.infinity,
                    duration: Duration(seconds: duration),
                    gradient: const LinearGradient(
                      colors: [
                        AppColors.primaryColor,
                        AppColors.emeraldGreen,
                        AppColors.darkGreen,
                      ],
                    ),
                    backgroundColor: AppColors.paleBlue,
                  ),
                ),
              ),
              Positioned(
                left: -12.w,
                top: -10.h,
                child: const CircleAvatar(
                  radius: 15,
                  backgroundColor: AppColors.paleBlue,
                  child: CircleAvatar(
                    radius: 12,
                    backgroundColor: AppColors.primaryColor,
                  ),
                ),
              ),
              Positioned(
                right: -12.w,
                top: -10.h,
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: AppColors.paleBlue,
                  child: CircleAvatar(
                      radius: 12, backgroundColor: lastCircleAvatarColor),
                ),
              ),
              Positioned(
                left: 0.w,
                right: 0,
                top: -10.h,
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: AppColors.paleBlue,
                  child: CircleAvatar(
                      radius: 12, backgroundColor: middleCircleAvatarColor),
                ),
              ),
            ],
          ),
        ),
        16.vs,
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                TrackingCard(changeBetweenColors: changeBetweenColors),
                27.vs,
                ReviewListView(
                  color: changeBetweenColors,
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
