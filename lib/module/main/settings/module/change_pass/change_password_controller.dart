import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangePassController extends GetxController {
  final GlobalKey<FormState> changePassFormKey = GlobalKey<FormState>();

  late TextEditingController oldpassController,newpassController,cnewpassController;

  var oldpass = '';
  var newpass = '';
  var confpass = '';



  @override
  void onInit() {
    super.onInit();
    oldpassController = TextEditingController();
    newpassController = TextEditingController();
    cnewpassController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    oldpassController.dispose();
    newpassController.dispose();
    cnewpassController.dispose();
  }


  void checkSend() {
    final isValid = changePassFormKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    changePassFormKey.currentState!.save();
  }
}