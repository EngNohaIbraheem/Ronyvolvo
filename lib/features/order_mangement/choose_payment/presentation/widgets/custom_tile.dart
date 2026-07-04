import '../../../../../exports.dart';

class CustomTile extends StatelessWidget {
  final String titleText;
  final String? subtitleText;
  final Widget icon;

  const CustomTile({
    required this.titleText,
    this.subtitleText,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 16.0.h),
      title: Text(
        titleText,
        style: AppStyles.styleInterBold14,
      ),
      subtitle: subtitleText != null
          ? Text(
              subtitleText!,
              style: AppStyles.styleInterRegular11,
            )
          : null,
      trailing: icon,
      onTap: () {},
    );
  }
}
