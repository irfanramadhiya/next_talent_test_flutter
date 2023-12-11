import 'package:flutter/material.dart';

class RegisterViewModel extends ChangeNotifier {
  final formKey = GlobalKey<FormState>();
  final TextEditingController staffIdController = TextEditingController();
  final TextEditingController staffNameController = TextEditingController();
  final TextEditingController staffHobbyController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  bool isHiddenPassword = true;
  bool isHiddenConfirmPassword = true;

  changeHiddenStatePass() {
    isHiddenPassword = !isHiddenPassword;
    notifyListeners();
  }

  changeHiddenStateConfirmPass() {
    isHiddenConfirmPassword = !isHiddenConfirmPassword;
    notifyListeners();
  }
}
