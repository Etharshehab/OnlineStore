import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_store/src/feauture/home/view/screens/home.dart';
import 'package:online_store/src/feauture/search/cubit/azkar_cubit.dart';
import 'package:online_store/src/feauture/search/cubit/azkar_state.dart';
import 'package:online_store/src/feauture/search/view/screen/search.dart';

class LayOutScreen extends StatelessWidget {
  LayOutScreen({super.key});

  final List<Widget> _pages = [
    const Center(child: Home()),
    const Center(child: SearchScreen()),
    const Center(child: Text('Cart Page')),
    const Center(child: Text('Profile Page')),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FavCubit, AzkarState>(
      listener: (BuildContext context, AzkarState state) {},
      builder: (BuildContext context, AzkarState state) {
        final cubit = context.watch<FavCubit>();

        return Scaffold(
          body: _pages[cubit.index],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: cubit.index,
            onTap: (index) {
              cubit.updateIndex(index);
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
            selectedItemColor: Colors.teal,
            unselectedItemColor: Colors.grey,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
          ),
        );
      },
    );
  }
}
