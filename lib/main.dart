import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_mode_getx/home_screen.dart';
import 'package:theme_mode_getx/my_themes.dart';
import 'package:theme_mode_getx/theme_controller.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final themeData = Get.put(MyThemeController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      themeMode: themeData.isDarkMode ? ThemeMode.dark : ThemeMode.light,
      theme: MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
