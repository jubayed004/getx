import 'package:get/get.dart';

class Counter{
  RxInt value = 0.obs;

  counterData(){
    value.value+=10;
    print(value.value);

  }
}