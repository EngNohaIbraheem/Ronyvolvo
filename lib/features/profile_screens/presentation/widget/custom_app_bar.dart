import '../../../../../exports.dart';

class CustomAppBarpro extends StatelessWidget {
  const CustomAppBarpro({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
        AppStrings.addAddress,
          style: AppStyles.styleInterExtraBold32.copyWith(color: AppColors.darkSlateGray),
        ),
        8.hs,

          IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              // Handle notification press
            },
          ),


      ],
    );
  }
}