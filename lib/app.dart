import 'package:commit451/account_deletion_page.dart';
import 'package:commit451/home_page.dart';
import 'package:commit451/privacy_page.dart';
import 'package:commit451/terms_conditions_page.dart';
import 'package:commit451/ui/commit451_colors.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Commit 451',
      theme: ThemeData(
        // Define the default brightness and colors.
        colorScheme: ColorScheme.fromSeed(
          seedColor: Commit451Colors.primaryColor(),
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        '/': (context) => const HomePage(),
        '/privacy': (context) => const PrivacyPage(),
        '/terms-conditions': (context) => const TermsConditionsPage(),
        '/account-deletion': (context) => const AccountDeletionPage(),
      },
    );
  }
}
