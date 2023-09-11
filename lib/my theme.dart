import 'package:flutter/material.dart';

class MyTheme
{
  static Color black = const Color(0xff242424);
  static Color primaryLight = const Color(0xffB7935F);
  static ThemeData lightTheme = ThemeData(
  primaryColor: primaryLight,
  scaffoldBackgroundColor: Colors.transparent,
    appBarTheme:const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: Color(0xff242424)
      )
    ),
    textTheme: TextTheme(
      titleLarge:TextStyle(
        fontWeight:FontWeight.w700,
        fontSize:30,
        color:black,
      ),
      titleMedium:TextStyle(
        fontWeight:FontWeight.w600,
        fontSize:25,
        color:black,
      ),
      titleSmall:TextStyle(
        fontWeight:FontWeight.w400,
        fontSize:25,
        color:black,
      ),
    ),
    bottomNavigationBarTheme:BottomNavigationBarThemeData(
      selectedItemColor:black,
      unselectedItemColor:Colors.white,
      showUnselectedLabels:true,
    )
  );
}
