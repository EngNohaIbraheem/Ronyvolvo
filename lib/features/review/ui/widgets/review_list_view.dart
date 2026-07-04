import 'package:fatto/exports.dart';
import 'package:fatto/features/review/ui/widgets/review_card.dart';
import '../../data/models/review_model.dart';

class ReviewListView extends StatelessWidget {
  ReviewListView({super.key, required this.color});
  final Color color;
  final List<ReviewModel> reviews = [
    const ReviewModel(
        title: 'Packed',
        subTitle:
            'Your parcel is packed and will be handed over to our delivery partner.',
        date: 'April,19 12:31'),
    const ReviewModel(
        title: 'On the Way to Logistic Facility',
        subTitle:
            'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore.',
        date: 'April,19 16:20'),
    const ReviewModel(
        title: 'Arrived at Logistic Facility',
        subTitle:
            'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore.',
        date: 'April,19 19:07'),
    const ReviewModel(
        title: 'Shipped',
        subTitle:
            'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore.',
        date: 'April,20 06:15'),
    const ReviewModel(
        title: 'Out for Delivery',
        subTitle:
            'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore.',
        date: 'April,22 11:10'),
    ReviewModel(
        title: 'Delivered',
        widget: CircleAvatar(
          radius: 11,
          backgroundColor: AppColors.primaryColor.withOpacity(.1),
          child: Center(
            child: SvgPicture.asset(AppAssets.check),
          ),
        ),
        subTitle:
            'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore.',
        date: 'April,19 12:50'),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: reviews.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(bottom: 27.h),
              child: ReviewCard(
                reviewModel: reviews[index],
                color: color,
              ),
            );
          }),
    );
  }
}
