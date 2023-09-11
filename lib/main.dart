import 'package:flutter/material.dart';
import 'package:islami_practice/home/quran/sura%20details%20screen.dart';
import 'package:islami_practice/my%20theme.dart';

import 'home/home screen.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:HomeScreen.routeName,
      routes:
      {
        HomeScreen.routeName:(context)=>const HomeScreen(),
        SuraDetails.routName:(context)=>SuraDetails(),
      },
      theme:MyTheme.lightTheme
    );
  }

}