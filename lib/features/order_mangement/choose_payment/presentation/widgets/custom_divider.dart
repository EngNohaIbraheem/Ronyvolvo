import 'package:fatto/exports.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 0.30,
            strokeAlign: BorderSide.strokeAlignCenter,
            color: Color(0xFF777777),
          ),
        ),
      ),
    );
  }
}
