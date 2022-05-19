import 'package:commit451/privacy_page.dart';
import 'package:commit451/terms_conditions_page.dart';
import 'package:flutter/material.dart';

/// Navigation helper.
class Nav {
  static void navigateToPrivacy(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const PrivacyPage()),
    );
  }

  static void navigateToTermsAndConditions(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const TermsConditionsPage()),
    );
  }

  /// Android bias lol
  static void finish(BuildContext context) {
    Navigator.of(context).pop();
  }
}
