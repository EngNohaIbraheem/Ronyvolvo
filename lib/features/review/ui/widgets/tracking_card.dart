
import 'package:fatto/exports.dart';

class TrackingCard extends StatelessWidget {
  const TrackingCard({
    super.key,
    required this.changeBetweenColors,
  });

  final Color changeBetweenColors;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(16.w, 9.h, 10.w, 9.h),
      decoration: BoxDecoration(
          color: changeBetweenColors,
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Tracking Number',
                style: AppStyles.styleRalewayBold14,
              ),
              SvgPicture.asset(AppAssets.copy)
            ],
          ),
           Text(
            'LGS-i92927839300763731',
            style: AppStyles.styleNunitoSansRegular12,
          )
        ],
      ),
    );
  }
}
