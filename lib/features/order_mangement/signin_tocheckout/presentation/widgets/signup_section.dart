import 'package:fatto/core/widgets/custom_page_view.dart';
import 'package:fatto/core/widgets/custom_text_form_field.dart';
import 'package:fatto/features/Auth/login/presentation/logic/login_cubit.dart';
import '../../../../../exports.dart';

class SignUpSection extends StatefulWidget {
  const SignUpSection({super.key});

  @override
  _SignUpSectionState createState() => _SignUpSectionState();
}

class _SignUpSectionState extends State<SignUpSection> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    final loginCubit = LoginCubit.get(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Form(
        key: loginCubit.formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.email,
              style: AppStyles.styleInterRegular14
                  .copyWith(color: const Color(0xFF7D7D7D)),
            ),
            const SizedBox(height: 9),
            CustomTextFormField(
              controller: loginCubit.emailController,
              hintText: AppStrings.email,
              keyboardType: TextInputType.emailAddress,
              obscureText: false,
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email';
                }
                final emailRegex = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');
                if (!emailRegex.hasMatch(value)) {
                  return 'Please enter a valid email address';
                }
                return null;
              },
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              radiusOfContainer: 5.r,
            ),
            const SizedBox(height: 11),
            CustomTextFormField(
              controller: loginCubit.passwordController,
              hintText: AppStrings.password,
              keyboardType: TextInputType.text,
              obscureText: _isObscure,
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password';
                }
                if (value.length < 8) {
                  return 'Password must be at least 8 characters long';
                }
                if (!RegExp(r'[A-Z]').hasMatch(value)) {
                  return 'Password must contain at least one uppercase letter';
                }
                if (!RegExp(r'[0-9]').hasMatch(value)) {
                  return 'Password must contain at least one number';
                }
                return null;
              },
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              suffixSvgIcon: SvgPicture.asset(AppAssets.eyeOff),
              otherSuffixSvgIcon: SvgPicture.asset(AppAssets.eye),
              suffixFunction: () {
                setState(() {
                  _isObscure = !_isObscure;
                });
              },
              radiusOfContainer: 5.r,
            ),
            const SizedBox(height: 12),
            CustomButton(
              text: 'Join',
              onPressed: () {
                if (loginCubit.formKey.currentState?.validate() == true) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyPageViewScreen(),
                    ),
                  );
                  print("Form is valid");
                } else {
                  print("Form is invalid");
                }
              },
              backgroundColor: AppColors.primaryColor,
              textColor: Colors.white,
              borderRadius: 2.0,
              width: MediaQuery.sizeOf(context).width * 0.9,
              height: 55.h,
            ),
            const SizedBox(height: 19),
            Center(
              child: ForgotPasswordButton(
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 23),
            Center(
              child: Text(
                'Don\'t have an account?',
                style: AppStyles.styleInterRegular16.copyWith(
                  color: const Color(0xFF161616),
                ),
              ),
            ),
            const SizedBox(height: 5),
            Center(
              child: SignUpNowButton(
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
