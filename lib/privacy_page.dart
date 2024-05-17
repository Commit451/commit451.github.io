import 'package:commit451/ui/ui_factory.dart';
import 'package:flutter/material.dart';

class PrivacyPage extends StatelessWidget {
  const PrivacyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Commit 451 Privacy Policy'),
        ),
        body: ListView(padding: const EdgeInsets.all(40.0), children: [
          title("Terms of Use and Privacy Policy"),
          verticalSeparator(),
          text(
              "Commit 451 is committed to protecting your privacy. We will not distribute your personal information to third parties not affiliated with Commit 451 without your consent and we do not sell or rent your personal information. This privacy policy explains the guidelines we use in protecting your privacy, which is applicable to the use of commit451.com and our mobile apps (collectively, the “Services”)."),
          verticalSeparator(),
          title("Information We Collect Automatically"),
          verticalSeparator(),
          text(
              "Commit 451 collects anonymous usage statistics and crash reports through our mobile applications. The usage statistics and crash reports help us diagnose problems, help us understand how users interact with our mobile applications, and help us improve the performance of our mobile applications. This data, along with any other automatic anonymous data we collect is not linked to any personal information you provide. Persistent identifiers may automatically be collected from users, either by Commit 451 or by a third party on behalf of Commit 451. Persistent identifiers are used to support the internal operations of our Services, which may include maintaining and analyzing our Services, performing network communications, authenticating users, personalizing content, and protecting the security or integrity of the Services."),
          verticalSeparator(),
          title("Information You Provide"),
          verticalSeparator(),
          text(
              "Commit 451 may collect information you provide directly to us through our Services. When submitting information through a form, support request, or other inquiry to Commit 451, you may choose to provide us with your name, email address, and other contact information (such as your telephone number). This information will be used to respond to any communications you submit through the Services."),
          verticalSeparator(),
          title("Third Party Applications"),
          verticalSeparator(),
          text(
              "Commit 451 uses a variety of services hosted by third parties to help enhance and understand the use of our Services. These companies are authorized to use your anonymized information only as necessary to provide these services to us. These services may use cookies and collect other information sent by your browser or mobile device, such as your IP address or the applications that were running at the time of a malfunction. This information is processed by these third party tools to generate statistical usage information. The collection of this information will allow us to better understand and improve the performance, usability, and effectiveness of our Services."),
          verticalSeparator(),
          title("Disclosure of Information"),
          verticalSeparator(),
          text(
              "Commit 451 may disclose your personal information as required by law, such as to comply with a subpoena, or similar legal process and when we believe in good faith that disclosure is necessary to protect our rights, protect your safety or the safety of others, investigate fraud, or respond to a government request."),
          title("Security"),
          verticalSeparator(),
          text(
              "The security of your personal information is important to us. We take appropriate technical measures for generally accepted standards for keeping your personal information confidential and protected against accidental or unlawful destruction or loss, alteration, unauthorized disclosure or access."),
          verticalSeparator(),
          title("Notification of Changes"),
          verticalSeparator(),
          text(
              "If we change our privacy statement, we will post those changes to this privacy statement and update the date at the bottom of this document. We encourage you to periodically review this page for the latest information on our privacy practices."),
          verticalSeparator(),
          title("Questions"),
          verticalSeparator(),
          text(
              "If you have any questions about this privacy policy, please send an email to commit451@gmail.com."),
          verticalSeparator(),
          title("Last Updated: September 21, 2018"),
          verticalSeparator(),
        ]));
  }
}
