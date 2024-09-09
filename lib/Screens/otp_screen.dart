import 'package:flutter/material.dart';
import 'package:whats_app/Core/firebase_utils.dart';
class OtpScreen extends StatefulWidget {
  final String? phoneNumber;
   const OtpScreen({super.key,this.phoneNumber});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController otpController = TextEditingController();
  @override
  void dispose() {
    otpController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Enter Verification code for ${widget.phoneNumber}"),
            Form(
              key: formKey,
              child: Padding(
                padding: EdgeInsets.all(MediaQuery.of(context).size.width/10),
                child: TextFormField(
                  maxLength: 6,
                  controller:otpController,
                  decoration: const InputDecoration(
                    hintText: "Enter Verification Code",
                  ),
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter your phone number";
                    }
                    return null;
                  },
                ),
              ),
            ),
            MaterialButton(
              onPressed: () {
                Verification.sendCode(otpController);
                if(formKey.currentState!.validate()){
                  Navigator.of(context).pushNamed("ProfileScreen");
                }
              },
              color: Colors.green,
              child: const Text("Verify"),
            ),
          ],
        ),
      ),
    );
  }
}

