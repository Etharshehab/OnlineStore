import 'package:flutter/material.dart';
import 'package:online_store/src/core/style/string_app.dart';
import 'package:online_store/src/core/widget/customappbar.dart';
import 'package:online_store/src/feauture/home/view/widget/customgridview.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(title: const Center(child: Text(StringApp.appTitle1))),
        body: const CustomGridView());
  }
}
