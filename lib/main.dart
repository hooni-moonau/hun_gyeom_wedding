import 'package:flutter/material.dart';
import 'package:hun_gyeom_wedding/widgets/credit.dart';
import 'package:hun_gyeom_wedding/widgets/custom_divider.dart';
import 'package:hun_gyeom_wedding/widgets/gallery.dart';
import 'package:hun_gyeom_wedding/widgets/introduction.dart';
import 'package:hun_gyeom_wedding/widgets/special_thanks.dart';
import 'package:hun_gyeom_wedding/widgets/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '훈 & 한겸이가 결혼합니다!',
      theme: ThemeData(
        fontFamily: 'Cafe24Supermagic-Bold-v1.0',
        scaffoldBackgroundColor: const Color(0xFFFFFFFF),

      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            // 1. 메인 표지
            Welcome(),
            CustomDivider(),
            // 2. 소개글
            Introduction(),

            CustomDivider(),

            // 3. 갤러리 위젯
            Gallery(),
            CustomDivider(),

            // 4. Special Thanks
            SpecialThanks(),
            // 5. Credit
            Credit()
          ],
        ),

      ),

    );
  }
}
