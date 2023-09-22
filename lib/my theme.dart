import 'package:flutter/material.dart';

class MyTheme
{
  static Color black = const Color(0xff242424);
  static Color primaryLight = const Color(0xffB7935F);
  static Color primaryDark = const Color(0xff141A2E);
  static Color yellowcolor = const Color(0xffFACC1D);

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
  static ThemeData darkTheme = ThemeData(
      primaryColor: primaryDark,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme:const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(
              color: Colors.white
          )
      ),
      textTheme: TextTheme(
        titleLarge:const TextStyle(
          fontWeight:FontWeight.w700,
          fontSize:30,
          color:Colors.white,
        ),
        titleMedium:const TextStyle(
          fontWeight:FontWeight.w600,
          fontSize:25,
          color:Colors.white,
        ),
        titleSmall:TextStyle(
          fontWeight:FontWeight.w400,
          fontSize:25,
          color:yellowcolor,
        ),
      ),
      bottomNavigationBarTheme:BottomNavigationBarThemeData(
        selectedItemColor:yellowcolor,
        unselectedItemColor:Colors.white,
        showUnselectedLabels:true,
      )
  );
}
