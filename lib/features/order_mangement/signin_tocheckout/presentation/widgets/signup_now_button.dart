import '../../../../../exports.dart';

class SignUpNowButton extends StatelessWidget {
  const SignUpNowButton({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: const Text(
        'sign up now',
        style: TextStyle(
          color: Color(0xFFBD6633),
          fontSize: 15,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
