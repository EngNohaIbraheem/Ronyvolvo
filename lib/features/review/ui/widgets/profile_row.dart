
import 'package:fatto/exports.dart';

class ProfileRow extends StatelessWidget {
  const ProfileRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 29,
              child: Image.asset(
                AppAssets.accountPhoto,
                fit: BoxFit.fill,
              ),
            ),
            8.hs,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'To Recieve',
                  style: AppStyles.styleInterBold21
                      .copyWith(color: AppColors.gunmetal),
                ),
                 Text(
                  'Track Your Order',
                  style: AppStyles.styleInterRegular14,
                )
              ],
            ),
          ],
        ),
        CircleAvatar(
          radius: 17.5,
          backgroundColor: AppColors.paleBlue,
          child: Center(
            child: SizedBox(
                height: 16,
                width: 16,
                child: SvgPicture.asset(AppAssets.settings)),
          ),
        ),
      ],
    );
  }
}
