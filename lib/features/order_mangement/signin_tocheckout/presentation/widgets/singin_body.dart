import 'package:fatto/exports.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomAppBar(),
        const SizedBox(height: 20),
        Align(
          child: Text(
            'Log in to continue your order',
            style: AppStyles.styleInterRegular14.copyWith(
              color: const Color(0xFF7D7D7D),
            ),
          ),
        ),
        const SizedBox(height: 35),
        const SignInWidget(),
        const SizedBox(height: 19),
        Align(
          alignment: Alignment.center,
          child: Text(
            'Or',
            style: AppStyles.styleInterRegular16
                .copyWith(color: Colors.black.withOpacity(0.31)),
          ),
        ),
        const SizedBox(height: 30),
        const SignUpSection(),
      ],
    );
  }
}
