import 'package:fatto/core/utils/app_assets.dart';

class ProductModel {
  final String name;
  final double price;
  final String imagePath;

  ProductModel({
    required this.name,
    required this.price,
    required this.imagePath,
  });

  static List<ProductModel> get products => [
        ProductModel(
            name: 'Brown candy', price: 500, imagePath: AppAssets.bagBrown),
        ProductModel(
            name: 'Green candy', price: 450, imagePath: AppAssets.bagBrown),
        ProductModel(
            name: 'Off White candy', price: 300, imagePath: AppAssets.offWhite),
      ];
}
