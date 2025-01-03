import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_store/src/feauture/search/cubit/azkar_state.dart';

class FavCubit extends Cubit<AzkarState> {
  Color favourite = Colors.black; // Default favorite color
  int index = 0; // Default index

  FavCubit() : super(AzkarInitial());

  void toggleColor() {
    favourite = (favourite == Colors.black) ? Colors.red : Colors.black;
    emit(Azkarupdate1());
  }

  void updateIndex(int currentIndex) {
    index = currentIndex;
    emit(Azkarupdate2());
  }
}
