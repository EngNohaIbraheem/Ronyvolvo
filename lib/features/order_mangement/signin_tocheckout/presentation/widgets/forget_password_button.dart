import '../../../../../exports.dart';

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Text with underline
          const Text(
            'Forgot password?',
            style: TextStyle(
              color: Color(0xFFA3A3A3),
              fontSize: 15,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
              height: 1.2,
            ),
          ),
          // Gray underline
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 1,
              color: Colors.grey[400],
            ),
          ),
        ],
      ),
    );
  }
}