import 'package:fatto/exports.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ProductHeader(),
          Padding(
            padding: EdgeInsets.only(left: 16.w),
            child: const ProductItem(),
          ),
        ],
      ),
    );
  }
}
