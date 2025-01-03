import 'package:flutter/material.dart';
import 'package:online_store/src/core/style/string_app.dart';
import 'package:online_store/src/core/style/text_style.dart';
import 'package:online_store/src/core/widget/customappbar.dart';
import 'package:online_store/src/feauture/search/data/dummy_data.dart';
import 'package:online_store/src/feauture/search/view/widget/customlisttile.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
          title: const Center(
        child: Text(
          StringApp.appTitle,
          style: TextStyleApp.appBarTitle,
        ),
      )),
      body: ListView.builder(
        itemCount: dummyProducts.length,
        itemBuilder: (context, index) {
          return CustomListTile(product: dummyProducts[index]);
        },
      ),
    );
  }
}
