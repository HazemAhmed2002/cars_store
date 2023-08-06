import 'package:cars_store/view/auth/verrification_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginController extends GetxController {
  var phoneNumber = TextEditingController();
  bool valueOfLoginButton = false;
  String idVerification = '';

  changeValueOfLoginButton(bool value) {
    valueOfLoginButton = value;

    update();
  }

  // List<CommunicationMechanism> communicationMechanism = [
  //   CommunicationMechanism(image: "https://firebasestorage.googleapis.com/v0/b/carapp-2f7b1.appspot.com/o/icons8-facebook.svg?alt=media&token=09f766a1-8c90-441e-a5ab-afb03b5ce2f8"),
  //   CommunicationMechanism(image: "https://firebasestorage.googleapis.com/v0/b/carapp-2f7b1.appspot.com/o/search.svg?alt=media&token=f869f279-c769-416b-982d-b63e2ebe5393"),
  // ];

  loginWithPhone(TextEditingController phoneController) async {
    await FirebaseAuth.instance
        .verifyPhoneNumber(
      phoneNumber: '+972 593035939',
      verificationCompleted: (PhoneAuthCredential credential) async {
        await FirebaseAuth.instance
            .signInWithCredential(credential)
            .then((value) {});
      },
      verificationFailed: (FirebaseAuthException e) {},
      codeSent: (String verificationId, int? resendToken) {
        idVerification = verificationId;
        update();
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    )
        .then((value) {
      Get.off(const VerrificationScreen());

      update();
    }).catchError((error) {
      update();
    });
    update();
  }

  void checkSMSCode(TextEditingController smsCodeController) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    String smsCode = smsCodeController.text.trim();
    try {
      PhoneAuthCredential phoneAuthCredential = PhoneAuthProvider.credential(
          verificationId: idVerification, smsCode: smsCode);
      await auth.signInWithCredential(phoneAuthCredential);
    } catch (e) {}
  }

  signInWithGoogle() async {
    GoogleSignInAccount? userAccount = await GoogleSignIn().signIn();
    GoogleSignInAuthentication? googleAuthentication =
        await userAccount?.authentication;
    AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuthentication?.accessToken,
      idToken: googleAuthentication?.idToken,
    );
    UserCredential user =
        await FirebaseAuth.instance.signInWithCredential(credential);
  }
}
