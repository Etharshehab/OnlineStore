import 'package:flutter/material.dart';
import 'package:online_store/src/core/style/text_style.dart';
import 'package:online_store/src/feauture/search/model/product.dart';

class CustomColumn extends StatelessWidget {
  final Product product;
  const CustomColumn({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 4.0),
          child: Text(product.title, style: TextStyleApp.productTitle),
        ),
        const Row(
          children: [
            Icon(Icons.star, color: Colors.yellow, size: 16),
            Icon(Icons.star, color: Colors.yellow, size: 16),
            Icon(Icons.star, color: Colors.yellow, size: 16),
            Icon(Icons.star, color: Colors.yellow, size: 16),
            Icon(Icons.star_border, color: Colors.grey, size: 16),
          ],
        ),
        const SizedBox(height: 8),
        Text('${product.price.toString()} USD',
            style: TextStyleApp.productPrice),
      ],
    );
  }
}
