import 'package:flutter/material.dart';
import 'package:whats_app/Screens/otp_screen.dart';
import 'package:whats_app/Theme/style.dart';
import '../Core/firebase_utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController phoneController = TextEditingController();
  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Enter your Phone",
          style: TextStyles.headLines,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
              "WhatsApp will need to verify Phone number",
            ),
            Form(
              key: formKey,
              child: Padding(
                padding: EdgeInsets.all(MediaQuery.of(context).size.width / 10),
                child: TextFormField(
                  maxLength: 13,
                  controller: phoneController,
                  decoration: const InputDecoration(
                    hintText: "Phone Number",
                  ),
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value!.isEmpty || value.length < 11) {
                      return "Enter a valid phone number";
                    }
                    return null;
                  },
                ),
              ),
            ),
            MaterialButton(
              onPressed: () {
                Verification.verifyPhoneNumber(phoneController.text);
                if (formKey.currentState!.validate()) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder:(context)=> OtpScreen(
                        phoneNumber: phoneController.text,
                      ),
                    ),
                  );
                }
              },
              color: Colors.green,
              child: const Text("Send Code"),
            ),
          ],
        ),
      ),
    );
  }
}
