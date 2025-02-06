import 'package:get/get.dart';
import 'package:getx/Screen/another_screen.dart';
import 'package:getx/Screen/home_screen.dart';

import 'splash_screen.dart';

///=========Routes Name==========///

const String splash = '/splash';
const String home = '/home';
const String another = '/another';

///=======Control our page route flow=======///

List<GetPage> getPage=[
  GetPage(name: splash, page: ()=>SplashScreen()),
  GetPage(name: home, page: ()=>HomeScreen()),
  GetPage(name: another, page: ()=>AnotherScreen()),
];
