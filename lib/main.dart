import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx/Screen/app_languages.dart';
import 'package:getx/Screen/counter.dart';
import 'package:getx/Screen/home_screen.dart';
import 'package:getx/Screen/routes.dart';
import 'package:getx/theme/app_theme.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
MyApp({super.key});
 final Counter counter = Get.put(Counter());
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      translations: AppLanguages(),
      locale: Locale('en','US'),
      fallbackLocale: Locale('en','US'),
      theme: AppTheme().lightTheme(context),
      darkTheme: AppTheme().darkTheme(context),
      themeMode: ThemeMode.system,
      initialRoute: splash,
      getPages: getPage,
      home:  HomeScreen(),
    );
  }
}


