import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_store/myapp.dart';
import 'package:online_store/src/feauture/search/cubit/azkar_cubit.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => FavCubit(),
      child: const MyApp(),
    ),
  );
}
