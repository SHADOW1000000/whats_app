import 'package:flutter/material.dart';
import 'package:whats_app/Theme/style.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Welcome to WhatsApp", style: TextStyles.headLines),
            CircleAvatar(
              radius: 200,
              child: Image.asset("assets/whatsApp_logo.jpg"),
            ),
            const Text(
              "Read our Privacy Policy. Tap 'Agree and continue' to\naccept the Terms of Services",
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed("LoginScreen");
              },
              color: Colors.green,
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: const Text(
                "AGREE AND CONTINUE",
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
