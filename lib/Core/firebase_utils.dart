import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

FirebaseAuth auth = FirebaseAuth.instance;
String? verifyId;

class Verification {
  static Future<void> verifyPhoneNumber(String phoneNumber) async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: "+2$phoneNumber",
      verificationCompleted: verificationCompleted,
      verificationFailed: (FirebaseAuthException e) {
        if (e.code == 'invalid-phone-number') {
          print('The provided phone number is not valid.');
        }
      },
      codeSent: (String verificationId, int? resendToken) async {
        verifyId=verificationId;
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }
  static verificationCompleted(PhoneAuthCredential credential) {

  }

  static sendCode(TextEditingController controller) async {
    String smsCode = controller.text;
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verifyId!, smsCode: smsCode);
    await auth.signInWithCredential(credential);
  }
}

