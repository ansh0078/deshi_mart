import 'package:desh_mart/configs/customNotification.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Authprovider extends ChangeNotifier {
  final auth = FirebaseAuth.instance;
  bool isLoading = false;

  Future<void> loginWithEmailPwd(String email, String password, BuildContext context) async {
    isLoading = true;
    notifyListeners();
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      successMessage(context, "Login Success");
      context.go("/homePage");
    } catch (ex) {
      errorMessage(context, ex.toString());
    }
    isLoading = false;
    notifyListeners();
  }

  Future<void> logout(BuildContext context) async {
    try {
      await auth.signOut();
      successMessage(context, "Logout Sucessful");
      context.go("/auth");
    } catch (e) {
      errorMessage(context, e.toString());
    }
  }
}
