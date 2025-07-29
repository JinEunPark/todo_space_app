import 'package:flutter/material.dart';

final ThemeData todoAppTheme = ThemeData(

  scaffoldBackgroundColor: Colors.white,

  fontFamily: "Pretendard",

  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Colors.black,
    unselectedItemColor: Colors.grey,
  ),

  primaryColor: AppColors.primary,

  appBarTheme: AppBarTheme(
    backgroundColor: Colors.white,
    foregroundColor: Colors.black,
    surfaceTintColor: Colors.white,
  ),

  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      side: BorderSide(
        color: AppColors.poetryClientGrey[200]!,
      ),
      foregroundColor: Colors.black,
      textStyle: TextStyle(
        fontSize: 16,
      ),
      minimumSize: Size(64, 50),
    ),
  ),

  inputDecorationTheme: InputDecorationTheme(
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        width: 1.0,
        color: AppColors.poetryClientGrey[500]!,
      ),
    ),

    outlineBorder: BorderSide(
      color: AppColors.primary,
    ),

    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: AppColors.newBg,
        width: 1.0,
      ),
    ),

    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: AppColors.primary,
        width: 1.0,
      ),
    ),

    hintStyle: TextStyle(
      fontSize: 16,
      color: AppColors.poetryClientGrey[400],
      fontWeight: FontWeight.w500,
    ),

  ),

  dialogTheme: DialogTheme(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  ),

);


final ThemeData todoDarkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: AppColors.darkBg,
  fontFamily: "Pretendard",

  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: AppColors.darkSurface,
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.grey,
  ),

  primaryColor: AppColors.primary,

  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.darkSurface,
    foregroundColor: Colors.white,
    surfaceTintColor: AppColors.darkSurface,
  ),

  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      side: BorderSide(
        color: AppColors.poetryClientGrey[600]!,
      ),
      foregroundColor: Colors.white,
      textStyle: TextStyle(
        fontSize: 16,
      ),
      minimumSize: Size(64, 50),
    ),
  ),

  inputDecorationTheme: InputDecorationTheme(
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: AppColors.poetryClientGrey[700]!,
        width: 1.0,
      ),
    ),

    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: AppColors.primary,
        width: 1.0,
      ),
    ),

    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: AppColors.primary,
        width: 1.0,
      ),
    ),

    hintStyle: TextStyle(
      fontSize: 16,
      color: AppColors.poetryClientGrey[400],
      fontWeight: FontWeight.w500,
    ),
  ),

  dialogTheme: DialogTheme(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    backgroundColor: AppColors.darkSurface,
  ),
);


class AppColors extends Color {
  AppColors(super.value);

  static const Color scaffoldBackgroundColor = Color(0xFF191C20);
  static const Color primary = Color(0xFF36454F);  // 대표적인 차콜색 (Charcoal)

  static const Color secondary = Color(0xFFE2F9F9);

  static const Color white = Colors.white;

  static const Color bg = Color(0xFFF2F2F7);
  static const Color newBg = Color(0xFFF2F4F6);

  static const Color darkBg = Color(0xFF121212);
  static const Color darkSurface = Color(0xFF1E1E1E);
  static const Color floatingActionButtonColor = Color(0xFFFF6B6B);



  static const int _grayPrimaryValue = 0xFF848487;



  static const MaterialColor poetryClientGrey = MaterialColor(
    _grayPrimaryValue,
    <int, Color>{
      50: Color(0xFFFFEBEE),
      100: Color(0xFFE5E5EA),
      200: Color(0xFFD4D4D4),
      300: Color(0xFFAEAEB2),
      400: Color(0xFF8E8E93),
      500: Color(_grayPrimaryValue),
      600: Color(0xFF646464),
      700: Color(0xFF4A4A4A),
      800: Color(0xFF303030),
      900: Color(0xFF242424),
    },
  );
}


