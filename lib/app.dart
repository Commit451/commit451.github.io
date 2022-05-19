import 'package:commit451/home_page.dart';
import 'package:commit451/privacy_page.dart';
import 'package:commit451/terms_conditions_page.dart';
import 'package:commit451/ui/commit451_colors.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Commit 451',
      theme: ThemeData(
        primarySwatch: Commit451Colors.primaryMaterialColor(),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        '/': (context) => const HomePage(),
        '/privacy': (context) => const PrivacyPage(),
        '/terms-conditions': (context) => const TermsConditionsPage(),
      },
    );
  }
}