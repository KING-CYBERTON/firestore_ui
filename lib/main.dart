import 'package:firestore_ui/Views/Splash.dart';
import 'package:flutter/material.dart';
import 'package:firestore_ui/Views/Profile.dart';
import 'package:firestore_ui/Views/Form.dart';
import 'package:get/get.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Tree Life',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      getPages: [
        GetPage(name: '/', page: () => const SplashScreen()),
        GetPage(name: '/Profile', page: () => UserProfileScreen()),
        GetPage(name: '/Form', page: () => ProfileTab()),
      ],
      initialRoute: 'Form',
    );
  }
}
