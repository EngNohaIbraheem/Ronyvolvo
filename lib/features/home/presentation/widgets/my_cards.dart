import 'package:fatto/exports.dart';

class MyCards extends StatelessWidget {
  final String imagePath;
  final String title;
  final String price;
  final String? originalPrice;

  const MyCards(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.price,
      this.originalPrice});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SizedBox(
        width: 120,
        height: originalPrice == null
            ? 50
            : 130, // Adjust height based on originalPrice
        // ToDo 1 : Ask for height adjusting
        child: Card(
          elevation: 1.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(10.0),
                ),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                  height: 72,
                  width: double.infinity,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.normal),
                    ),
                    const SizedBox(height: 4.0),
                    Text(
                      '\$$price',
                      style: TextStyle(
                          fontSize: 12, color: Colors.deepOrange.shade400),
                    ),

                    // Add spacing before the original price in case no discounts\\
                    if (originalPrice != null) ...[
                      const SizedBox(
                          height: 4.0), // Add spacing before the original price
                      Text(
                        '\$$originalPrice',
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                    Align(
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.deepOrange.shade400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
