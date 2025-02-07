import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx/Screen/routes.dart';
import 'package:getx/theme/app_theme.dart';

import 'counter.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  Future changeLanguages(context)async{
     return showDialog(context: context, builder: (context)=>AlertDialog(
       title: Text("Select your languages".tr),
       content: SizedBox(
         height: 200,
         child: Column(
           children: [
             TextButton(onPressed: ()=>Get.updateLocale(Locale('bn','BD')), child: Text('Bangla'.tr)),
             SizedBox(
               width: 10,
             ),
             TextButton(onPressed: ()=>Get.updateLocale(Locale('en','US')), child: Text('English'.tr))
           ],
         ),
       ),
     ));
  }
  RxBool darkMode = false.obs;
  final Counter counter = Get.find<Counter>();
  String name = 'Jubayed-islam';
  final box = GetStorage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("appName".tr),
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
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ListTile(
                title: Text('darkMode'.tr),
                trailing: Obx(()=>Switch(
                    value: darkMode.value,
                    onChanged: (bool value) {
                      darkMode.value = value;
                      Get.changeTheme(darkMode.value == false
                          ? AppTheme().lightTheme(context)
                          : AppTheme().darkTheme(context));
                    })),
              ),
              ListTile(
                title: Text('languages'.tr),
                onTap: ()=>changeLanguages(context),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.purpleAccent),
                      onPressed: () {
                        box.write('name', name);
                      },
                      child: Text("store data".tr)),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                      onPressed: () {
                        print(box.read("name"));
                      },
                      child: Text("retrive data".tr)),
                ],
              ),
              Obx(() => Text(
                    counter.value.value.toString(),
                    style: TextStyle(fontSize: 50),
                  ))
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(50))),
        onPressed: () => Get.defaultDialog(
            title: "jUBAYED LEARNING APP DEVELOPMENT".tr, middleText: ''),
        child: Icon(Icons.add),
      ),
    );
  }
}
