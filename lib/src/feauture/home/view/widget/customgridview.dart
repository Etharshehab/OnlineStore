import 'package:flutter/material.dart';
import 'package:online_store/src/feauture/home/view/widget/customcard.dart';
import 'package:online_store/src/feauture/search/data/dummy_data.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 0.82,
      children: List.generate(
          dummyProducts.length,
          (index) => CustomCard(
                product: dummyProducts[index],
              )),
    );
  }
}
