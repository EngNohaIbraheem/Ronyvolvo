import 'package:fatto/exports.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewsListSection extends StatelessWidget {
  const ReviewsListSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.separated(
            padding: 0.pv,
            itemBuilder: (context , index){
              return  Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 35.r,
                    backgroundImage: const AssetImage(AppAssets.accountPhoto),
                  ),
                  20.hs,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Veronika',
                        style: AppStyles.styleInterSemiBold16
                            .copyWith(color: AppColors.darkSlateGray),
                      ),
                      4.vs,
                      RatingBar(
                        glow: false,
                        itemSize: 25.r,
                        initialRating: 3,
                        unratedColor: AppColors.transparent,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        ratingWidget: RatingWidget(
                          full: const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          empty: const Icon(
                            Icons.star_border_rounded,
                            color: Colors.amber,
                          ), half: const Icon(
                          Icons.star_half,
                          color: Colors.amber,
                        ),
                        ),
                        onRatingUpdate: (rating) {
                        },
                      ),
                      10.vs,
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.65,
                        child: Text(
                          AppStrings.type3Description,
                          style: AppStyles.styleInterRegular12,
                          maxLines: 5,

                        ),
                      )
                    ],
                  )
                ],
              );
            },
            separatorBuilder: (context , index){
              return 16.vs;
            },
            itemCount:6
        )
    );
  }
}
