import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

class CounterService with ListenableServiceMixin {
  ValueNotifier<int> counter = ValueNotifier<int>(0);

  addCounter(){
    counter.value++;
    notifyListeners();
  }
}