import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:online_store/src/feauture/search/model/product.dart';
import 'package:online_store/src/feauture/search/view/widget/customcolumn.dart';

class CustomRow extends StatelessWidget {
  final Product product;
  const CustomRow({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CachedNetworkImage(
          imageUrl: product.imageUrl,
          placeholder: (context, url) => const CircularProgressIndicator(),
          errorWidget: (context, url, error) => const Icon(Icons.error),
          height: 100,
          width: 100,
          fit: BoxFit.cover,
        ),
        const SizedBox(width: 16),
        CustomColumn(
          product: product,
        )
      ],
    );
  }
}
