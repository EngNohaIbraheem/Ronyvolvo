
import 'package:fatto/exports.dart';

class ReviewTextField extends StatelessWidget {
  const ReviewTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: 4,
      decoration: InputDecoration(
        fillColor: AppColors.reviewFieldColor,
        filled: true,
        hintText: 'Your comment',
        hintStyle: AppStyles.styleInterMedium16,
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                width: 0, color: AppColors.reviewFieldColor),
            borderRadius: BorderRadius.circular(8)),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                width: 0, color: AppColors.reviewFieldColor),
            borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}
