import 'package:flutter/material.dart';
import 'package:second_opnion/presentation/home_page/Presentation/home_page.dart';
import 'package:second_opnion/presentation/vendors/presentation/vendor_listing.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeAnimationCurve: Curves.linearToEaseOut,
      theme: ThemeData(fontFamily: 'Poppins'),
      home: AstrologerHomePage(),
    );
  }
}
