import 'package:fatto/exports.dart';

class CustomAppBar extends StatelessWidget {
  final String? title;

  const CustomAppBar({
    super.key,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 22),
      child: Container(
        color: AppColors.primaryColor,
        child: Row(
          children: [
            IconButton(
              icon: SvgPicture.asset(AppAssets.backArrow),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            if (title != null)
              Text(
                title!,
                style: AppStyles.styleInterBold16.copyWith(color: Colors.white),
              ),
          ],
        ),
      ),
    );
  }
}
