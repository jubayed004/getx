import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Screen/counter.dart';

class AnotherScreen extends StatelessWidget {
   AnotherScreen({super.key});

  final Counter counter = Get.find<Counter>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SafeArea(
         child: Center(
       child: Text(counter.value.value.toString()),
     )),
    );
  }
}
