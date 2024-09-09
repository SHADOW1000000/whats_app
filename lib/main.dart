import 'package:flutter/material.dart';
import 'package:whats_app/Screens/Profile_screen.dart';
import 'package:whats_app/Screens/login_screen.dart';
import 'package:whats_app/Screens/otp_screen.dart';
import 'package:whats_app/Screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(),
      ),
      home: const WelcomeScreen(),
      routes: {
        "WelcomeScreen": (context)=> const WelcomeScreen(),
        "LoginScreen": (context)=> const LoginScreen(),
        "OtpScreen":(context)=>  const OtpScreen(),
        "ProfileScreen":(context)=> const ProfileScreen()
      },
    );
  }
}
