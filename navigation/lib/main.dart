import 'package:first_app/pages/first_page.dart';
import 'package:first_app/pages/home_page.dart';
import 'package:first_app/pages/profile_page.dart';
import 'package:first_app/pages/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(DevicePreview(
    enabled: true, // Set to `true` to enable Device Preview
    builder: (context) =>  MyApp(),
  ));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});




  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true, // This enables DevicePreview's media queries
      locale: DevicePreview.locale(context), // Use the locale from DevicePreview
      builder: DevicePreview.appBuilder, // Wrap with DevicePreview's builder
      home: FirstPage(),
      // navigator is used for navigating from one page to another
      // however when we have a lot of pages it is okay to use routes instead
      // here is how we use routes when the pages are a lot
      routes: {
        '/firstpage': (context) => FirstPage(),
        '/homepage':(context) => HomePage(),
        '/settingspage': (context) => SettingsPage(),
        '/profilepage': (context) => ProfilePage() ,   
          },
      
    );
  }
}

