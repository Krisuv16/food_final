import 'package:flutter/material.dart';
import 'package:food_final/Foods/bakery_food.dart';
import 'package:food_final/homescreen/home_screen.dart';
import 'package:food_final/utilities/appbar.dart';
import 'utilities/bottomnav_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: homeAppBar(context),
        bottomNavigationBar: buttonnavbar
          (),
        body: home_screen(),
      )
    );
  }
}