
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:otter/Home_screen.dart';
import 'package:otter/recoding_page.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Home_Screen(),
        'r': (context) => Recoding_Screen(),
      },
    ),
  );
}
