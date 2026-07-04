import '../../../../exports.dart';

class ProductListViewItem extends StatelessWidget {
  final ProductModel product;

  const ProductListViewItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final itemWidth = screenWidth * 0.4;
    final itemHeight = itemWidth * 1.6;

    return SizedBox(
      width: itemWidth,
      height: itemHeight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            product.imagePath,
            fit: BoxFit.cover,
            width: itemWidth,
            height: itemWidth,
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  product.name,
                  style: AppStyles.styleInterRegular13,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(
                width: 28,
                height: 28,
                child: SvgPicture.asset(AppAssets.heart),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            '${product.price}',
            style: AppStyles.stylePoppinsRegular13.copyWith(
              color: AppColors.brickRed,
            ),
          ),
        ],
      ),
    );
  }
}
