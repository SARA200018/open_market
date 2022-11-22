import 'package:flutter/material.dart';
import 'package:get/get.dart';

class forgetPassController extends GetxController {
  final GlobalKey<FormState> forgetPassFormKey = GlobalKey<FormState>();

  late TextEditingController emailController;

  var email = '';



  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    emailController.dispose();
  }

  String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return "Provide valid Email";
    }
    return null;
  }


  void checkSend() {
    final isValid = forgetPassFormKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    forgetPassFormKey.currentState!.save();
  }
}