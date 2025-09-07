import 'package:commit451/ui/ui_factory.dart';
import 'package:flutter/material.dart';

class AccountDeletionPage extends StatelessWidget {
  const AccountDeletionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Commit 451 - Account Deletion')),
      body: ListView(
        padding: const EdgeInsets.all(40.0),
        children: [
          title("Account Deletion"),
          verticalSeparator(),
          text(
            "Please email us at commit451@gmail.com with the email associated with your account if you would like to delete your account and its associated data. We will do so in a timely manner.",
          ),
          verticalSeparator(),
        ],
      ),
    );
  }
}
