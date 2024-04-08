import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_mode_getx/theme_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final themeController = Get.put(MyThemeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Light & Dark theme"),
      ),
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Hello world",
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 16),
            FilledButton(
              onPressed: () {
                themeController.changeTheme(!themeController.isDarkMode);
              },
              style: ButtonStyle(
                fixedSize: const MaterialStatePropertyAll(Size(200, 50)),
                backgroundColor:
                    MaterialStatePropertyAll(Theme.of(context).canvasColor),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              child: const Text("Button"),
            ),
            const SizedBox(height: 16),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              surfaceTintColor: Theme.of(context).cardColor,
              color: Theme.of(context).cardColor,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Card"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
