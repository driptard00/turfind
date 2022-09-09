import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turfind/routes/app_route.dart';
import 'package:turfind/routes/app_routes_name.dart';


var initialRoute = introscreen;


void main() {
  runApp(
    const MyApp()
  );
}


class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "TurFind",
      theme: ThemeData(
        fontFamily: "PlusJaka"
      ),
      initialRoute: initialRoute,
      getPages: getPage
    );
  }
}