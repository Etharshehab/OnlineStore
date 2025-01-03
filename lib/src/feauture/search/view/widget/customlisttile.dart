import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_store/src/feauture/search/cubit/azkar_cubit.dart';
import 'package:online_store/src/feauture/search/cubit/azkar_state.dart';
import 'package:online_store/src/feauture/search/model/product.dart';
import 'package:online_store/src/feauture/search/view/widget/customrow.dart';

class CustomListTile extends StatelessWidget {
  final Product product;
  const CustomListTile({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FavCubit, AzkarState>(
      listener: (BuildContext context, AzkarState state) {
        // Handle any side effects here
      },
      builder: (BuildContext context, AzkarState state) {
        final cubit = context.watch<FavCubit>();
        return Card(
          color: Colors.white,
          elevation: 2,
          child: ListTile(
            title: CustomRow(
              product: product,
            ),
            trailing: IconButton(
              icon: Icon(
                cubit.favourite == Colors.red
                    ? Icons.favorite
                    : Icons.favorite_border,
                color: cubit.favourite,
              ),
              onPressed: () {
                cubit.toggleColor();
              },
            ),
          ),
        );
      },
    );
  }
}
