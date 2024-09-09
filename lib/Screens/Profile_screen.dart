import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Stack(
                  children: [
                    const CircleAvatar(
                      radius: 100,
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.camera_alt,size: 50,)))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
