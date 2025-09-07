import 'package:commit451/ui/ui_factory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class SalamanderPage extends StatelessWidget {
  const SalamanderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Salamander AI')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Logo
            Image.asset(
              'assets/images/logo_salamander.png',
              height: 120,
              width: 120,
            ),
            verticalSeparator(),

            // Title and tagline
            title("Salamander AI"),
            const SizedBox(height: 8),
            Text(
              "Never be AFK",
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Colors.grey[600],
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.center,
            ),
            verticalSeparator(),
            verticalSeparator(),

            // App description
            text(
              "With the power of AI, you can always have a presence at your computer. Using Anthropic Claude, OpenAI Codex, or Google Gemini, you can connect your phone to your computer in a way that enhances your workflow and optimizes your output. Create a runner, choose a directory, and start a conversation with your AI. While its doing the work, you can be out and about doing something you love, and when the AI is done doing its work, it will send you a push notification, ready for the next task. Even when you are AFK, your AI is there for you at your computer, ready to execute.",
            ),
            verticalSeparator(),
            verticalSeparator(),

            // Download buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // iOS App Store button
                InkWell(
                  onTap: () => _launchUrl(
                    'https://apps.apple.com/app/com.commit451.salamander',
                  ),
                  child: SvgPicture.asset(
                    'assets/images/app_store.svg',
                    height: 60,
                    width: 180,
                  ),
                ),
                horizontalSeparator(),

                // Google Play Store button
                InkWell(
                  onTap: () => _launchUrl(
                    'https://play.google.com/store/apps/details?id=com.commit451.salamander',
                  ),
                  child: Image.asset(
                    'assets/images/play_store.png',
                    height: 60,
                    width: 180,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }
}
