import 'package:fatto/exports.dart';
import 'package:fatto/core/widgets/custom_dialog.dart';
import 'package:fatto/features/review/ui/widgets/custom_rating_bar.dart';
import 'button_sheet_profile_row.dart';
import 'review_text_field.dart';

class ButtonSheetReview extends StatelessWidget {
  const ButtonSheetReview({super.key});

  @override
  Widget build(BuildContext context) {
    double rating = 0.0;
    CustomDialog shapeDialog = CustomDialog();

    return Container(
        decoration: BoxDecoration(
            color: AppColors.white, borderRadius: BorderRadius.circular(10)),
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20.w),
                  height: 80.h,
                  decoration: BoxDecoration(
                      color: AppColors.frostedBlue,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Review',
                        style: AppStyles.styleInterBold21,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20.w, 0, 20.w, 20.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      17.3.vs,
                      const ButtonSheetProfileRow(),
                      14.7.vs,
                      CustomRatingBar(
                        rating: rating,
                      ),
                      18.23.vs,
                      const ReviewTextField(),
                      10.vs,
                      CustomButton(
                          text: 'Say it!',
                          onPressed: () {
                            Navigator.pop(context);
                            shapeDialog.customshowDialog(
                              context,
                              child: Center(
                                child: Column(
                                  children: [
                                    30.vs,
                                    Text(
                                      'Done!',
                                      style: AppStyles.styleInterBold18,
                                    ),
                                    8.vs,
                                    Text(
                                      'Thank you for your review',
                                      style: AppStyles.styleInterMedium13,
                                    ),
                                    13.vs,
                                    CustomRatingBar(
                                      starColor: AppColors.starColor,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          })
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
