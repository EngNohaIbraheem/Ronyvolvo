import 'package:fatto/exports.dart';

class DescriptionWidget extends StatefulWidget {
  final String text;
  const DescriptionWidget({
    super.key,
    required this.text,
  });

  @override
  State<DescriptionWidget> createState() => _DescriptionWidgetState();
}

class _DescriptionWidgetState extends State<DescriptionWidget> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final text = widget.text;
    final maxLines = isExpanded ? null : 3;
    final textColor = isExpanded ? AppColors.slateGray : AppColors.brickRed;
    final displayText = isExpanded || text.length <= 100
        ? text
        : '${text.substring(0, 100)}...';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.description,
          style:
              AppStyles.styleInterMedium13.copyWith(color: AppColors.brickRed),
        ),
        Text(
          displayText,
          maxLines: maxLines,
          overflow: isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
          style: AppStyles.styleInterRegular12,
        ),
        if (text.length > 100)
          GestureDetector(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: Padding(
              padding: EdgeInsets.only(top: 8.h),
              child: Text(
                isExpanded ? "Read less" : "Read more",
                style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        SizedBox(
          height: 25.h,
        ),
        Padding(
          padding: EdgeInsets.all(8.w),
          child: Container(
            width: double.infinity,
            decoration: const ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 0.50,
                  strokeAlign: BorderSide.strokeAlignCenter,
                  color: AppColors.slateGray,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
        Row(
          children: [
            SizedBox(
              width: 25.w,
              height: 25.h,
              child: SvgPicture.asset(
                AppAssets.shieldDone,
                color: AppColors.brickRed,
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
             Text(AppStrings.originalProduct,
                style: AppStyles.stylePoppinsRegular12),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            SizedBox(
              width: 25.w,
              height: 25.h,
              child: SvgPicture.asset(
                AppAssets.historyLine,
                color: AppColors.brickRed,
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
             Text(AppStrings.returnOfGoodsIn12Days,
                style: AppStyles.stylePoppinsRegular12),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            SizedBox(
              width: 25.w,
              height: 25.h,
              child: SvgPicture.asset(
                AppAssets.walletLine,
                color: AppColors.brickRed,
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
             Text(AppStrings.payDirectlyAtYourPlace,
                style: AppStyles.stylePoppinsRegular12),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            SizedBox(
              width: 25.w,
              height: 25.h,
              child: SvgPicture.asset(
                AppAssets.priceTag,
                color: AppColors.brickRed,
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
             Text(AppStrings.voucherCodeAvailable,
                style: AppStyles.stylePoppinsRegular12),
          ],
        ),
      ],
    );
  }
}
