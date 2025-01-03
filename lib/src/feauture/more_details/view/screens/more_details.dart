import 'package:flutter/material.dart';
import 'package:online_store/src/core/widget/customappbar.dart';
import 'package:online_store/src/feauture/more_details/view/widget/customcolumn.dart';
import 'package:online_store/src/feauture/search/model/product.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;
  const ProductDetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(
          title: const Center(child: Text("more details")),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context); // Navigate back to the previous screen
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        body: CustomColumn(
          product: product,
        ));
  }
}
