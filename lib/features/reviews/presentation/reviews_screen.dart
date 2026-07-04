import 'package:fatto/exports.dart';
import 'package:fatto/features/reviews/presentation/widget/reviews_list_section.dart';

class ReviewsScreen extends StatelessWidget {
  const ReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: 16.ph,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            44.vs,
            Padding(
              padding: 16.pv,
              child: Text(
                AppStrings.reviews,
                style: AppStyles.styleInterBold28
                    .copyWith(color: AppColors.darkSlateGray),
              ),
            ),
            16.vs,
            const ReviewsListSection(),
          ],
        ),
      ),
    );
  }
}
