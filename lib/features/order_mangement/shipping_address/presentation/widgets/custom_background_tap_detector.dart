import 'package:fatto/exports.dart';

class CustomBackgroundTapDetector extends StatelessWidget {
  final VoidCallback onTap;
  final Widget child;

  const CustomBackgroundTapDetector({
    required this.onTap,
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.transparent,
        child: child,
      ),
    );
  }
}
