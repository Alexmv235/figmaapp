import '/core/app_export.dart';
import 'package:projectfigma/presentation/sing_up_screen/models/sing_up_model.dart';
import 'package:flutter/material.dart';

class SingUpController extends GetxController {
  TextEditingController facebookButtonController = TextEditingController();

  TextEditingController emailFormController = TextEditingController();

  TextEditingController passwordFormController = TextEditingController();

  Rx<SingUpModel> singUpModelObj = SingUpModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    facebookButtonController.dispose();
    emailFormController.dispose();
    passwordFormController.dispose();
  }
}
