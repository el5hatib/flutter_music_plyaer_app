import 'package:flutter/material.dart';
import 'package:music_player/consts/app_colors.dart';
import 'package:music_player/views/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Voice',
      theme: ThemeData(
       // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        fontFamily: 'JosefinSans',
        appBarTheme:  AppBarTheme(
          backgroundColor: AppColors.bgDarkColor,
          elevation: 0,
          titleTextStyle: Theme.of(context).textTheme.titleMedium,
        ),
        textTheme: const TextTheme(
          titleMedium: TextStyle(
            color: AppColors.whiteColor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          titleSmall: TextStyle(
            color: AppColors.whiteColor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          bodyMedium: TextStyle(
            color: AppColors.bgLightColor,
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
        ),

        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}


