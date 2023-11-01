import 'package:flutter/material.dart';
import 'package:news_app/app_theme.dart';
import 'package:news_app/home_view.dart';
import 'package:news_app/settings.dart';
import 'package:news_app/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: AppTheme.lightTheme,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        SettingsScreen.routeName: (context) => const SettingsScreen(),
        HomeScreen.routeName: (context) => const HomeScreen(),
      },
    );
  }
}
