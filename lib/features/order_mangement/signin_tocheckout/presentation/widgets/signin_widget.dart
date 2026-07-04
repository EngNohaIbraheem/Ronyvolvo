import 'package:fatto/exports.dart';

class SignInWidget extends StatelessWidget {
  const SignInWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SocialSignInButton(
            onPressed: () {},
            backgroundColor: Colors.white,
            buttonText: 'Google',
            textColor: const Color(0xFFA3A3A3),
            iconPath: AppAssets.google,
            borderColor: Colors.black.withOpacity(0.18),
          ),
          const SizedBox(
            width: 15,
          ),
          SocialSignInButton(
            onPressed: () {},
            backgroundColor: AppColors.deepBlue,
            buttonText: 'Facebook',
            textColor: Colors.white,
            iconPath: AppAssets.facebookLogo,
            borderColor: const Color(0xFF395185),
          ),
        ],
      ),
    );
  }
}
