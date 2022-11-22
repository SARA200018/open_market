import 'package:flutter/material.dart';

import 'color_helper.dart';

class ThemeManager {
 static ThemeData lightTheme = ThemeData(
    backgroundColor: Colors.white,
    primarySwatch: Colors.orange,
    primaryColor: ColorManager.primaryOrange,
    appBarTheme: AppBarTheme(
      elevation: 0,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20
      ),
      iconTheme: IconThemeData(
        color: Colors.white,

      )

    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: ColorManager.primaryBlue,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
    )
  );
}