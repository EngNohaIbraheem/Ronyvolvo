import 'package:fatto/exports.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProductHeader(),
            Padding(
              padding: EdgeInsets.only(left: 16.w),
              child: const ProductDetailsItem(),
            ),
            const ProductListView(),
          ],
        ),
      ),
    );
  }
}

class ProductListView extends StatelessWidget {
  const ProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final itemWidth = screenWidth * 0.4;
    final itemHeight = itemWidth * 1.6;

    return SizedBox(
      height: itemHeight,
      child: ListView.builder(
        itemCount: ProductModel.products.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: SizedBox(
              width: itemWidth,
              child: ProductListViewItem(
                product: ProductModel.products[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
