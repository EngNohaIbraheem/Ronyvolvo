import 'package:fatto/exports.dart';
import 'package:fatto/features/review/data/models/review_model.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({
    super.key,
    required this.reviewModel,
    this.color,
    this.cardColor,
  });
  final ReviewModel reviewModel;
  final Color? color;
  final Color? cardColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: cardColor ?? AppColors.white,
      height: 62.h,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             reviewModel.widget!=null? Row(
                children: [
                  Text(
                    reviewModel.title,
                    style: AppStyles.styleRalewayBold17,
                  ),
                  7.hs,
                  reviewModel.widget!
                ],
              ):Text(
                    reviewModel.title,
                    style: AppStyles.styleRalewayBold17,
                  ),
              Container(
                color: color ?? AppColors.product35ColorColor,
                width: 90.w,
                child: Center(
                  child: Text(
                    reviewModel.date,
                    style: AppStyles.styleRalewayMedium13,
                  ),
                ),
              )
            ],
          ),
          Text(
            reviewModel.subTitle,
            style: AppStyles.styleNunitoSansRegular12,
          )
        ],
      ),
    );
  }
}
