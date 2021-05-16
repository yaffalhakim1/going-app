import 'package:flutter/material.dart';
import 'package:going/screens/welcome/components/top_banner.dart';
import 'package:going/screens/welcome/components/welcome_text.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [TopBanner(), WelcomeText()],
        ),
      ),
    );
  }
}
