import 'package:commit451/nav.dart';
import 'package:commit451/ui/commit451_styles.dart';
import 'package:commit451/ui/commit451_urls.dart';
import 'package:commit451/ui/snackbar_helper.dart';
import 'package:commit451/ui/ui_factory.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _launchUrl(String url) async {
    Uri uri = Uri.parse(url);
    await launchUrl(uri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(children: [
            Align(alignment: AlignmentDirectional.center, child: centerCard()),
            Align(
                alignment: AlignmentDirectional.bottomCenter,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  bottomCard(),
                  verticalSeparator(),
                ]))
          ])),
    );
  }

  Widget centerCard() {
    return Card(
      elevation: 8.0,
      margin: const EdgeInsets.all(20.0),
      child: Container(
        margin: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            verticalSeparator(),
            ClipRRect(
              borderRadius: BorderRadius.circular(100.0),
              child: Image.asset("assets/images/avatar.png",
                  width: 200, height: 200),
            ),
            verticalSeparator(),
            Text(
              "Commit 451",
              style: logoStyle,
            ),
            Text(
              "451 times more committed to creating apps with clean code and modern design for a true experience inspired by user instinct.",
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
            verticalSeparator(),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  button(FontAwesomeIcons.twitter, urlTwitter),
                  button(FontAwesomeIcons.github, urlGitHub),
                  button(Icons.android, urlPlayStore),
                ],
              ),
            ),
            verticalSeparator(),
          ],
        ),
      ),
    );
  }

  Widget bottomCard() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text("Copyright © Commit 451. All rights reserved"),
        verticalSeparator(),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            link("Privacy", () {
              Nav.navigateToPrivacy(context);
            }),
            horizontalSeparator(),
            link("Terms & Conditions", () {
              Nav.navigateToTermsAndConditions(context);
            }),
          ],
        )
      ],
    );
  }

  Widget link(String text, GestureTapCallback callback) {
    return InkWell(
      onTap: callback,
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget button(IconData iconData, String url) {
    return RawMaterialButton(
      onPressed: () {
        _launchUrl(url);
      },
      elevation: 2.0,
      fillColor: Colors.white,
      padding: const EdgeInsets.all(15.0),
      shape: const CircleBorder(),
      child: Icon(
        iconData,
        size: 35.0,
      ),
    );
  }
}
