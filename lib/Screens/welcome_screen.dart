import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Welcome to WhatsApp",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            CircleAvatar(
              radius: 200,
              child: Image.asset("assets/whatsApp_logo.jpg"),
              ),
            const Text(
              "Read our Privacy Policy. Tap 'Agree and continue' to\naccept the Terms of Services",
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
            MaterialButton(
              onPressed: () {},
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
