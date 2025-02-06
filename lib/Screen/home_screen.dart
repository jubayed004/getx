import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx/Screen/routes.dart';

import 'counter.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final Counter counter = Get.find<Counter>();
  String name='Jubayed-islam';
  final box = GetStorage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gets Practices"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Get.toNamed(another);
              },
              icon: Icon(Icons.arrow_forward_outlined))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.purpleAccent),
                    onPressed: () {
                    box.write('name',name);
                    }, child: Text("store data")),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                    onPressed: () {
                     print( box.read("name"));

                    }, child: Text("retrive data")),
              ],
            ),
            Obx(() => Text(
                  counter.value.value.toString(),
                  style: TextStyle(fontSize: 50),
                ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(50))),
        onPressed: () => Get.defaultDialog(
            title: "jUBAYED LEARNING APP DEVELOPMENT", middleText: ''),
        child: Icon(Icons.add),
      ),
    );
  }
}
