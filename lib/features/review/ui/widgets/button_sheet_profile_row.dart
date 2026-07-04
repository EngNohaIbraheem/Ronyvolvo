
import 'package:fatto/exports.dart';

class ButtonSheetProfileRow extends StatelessWidget {
  const ButtonSheetProfileRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 19,
          child: Image.asset(
            AppAssets.review,
            fit: BoxFit.fill,
          ),
        ),
        10.hs,
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Lorem ipsum dolor sit amet consectetur.',
              style: AppStyles.styleInterMedium12
                  .copyWith(color: AppColors.gunmetal),
            ),
            Text(
              'Order #92287157',
              style: AppStyles.styleInterBold14,
            )
          ],
        ),
      ],
    );
  }
}
