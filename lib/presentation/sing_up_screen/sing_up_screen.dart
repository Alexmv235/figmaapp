import 'controller/sing_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:projectfigma/core/app_export.dart';
import 'package:projectfigma/core/utils/validation_functions.dart';
import 'package:projectfigma/widgets/custom_button.dart';
import 'package:projectfigma/widgets/custom_text_form_field.dart';
import 'package:projectfigma/domain/googleauth/google_auth_helper.dart';

// ignore_for_file: must_be_immutable
class SingUpScreen extends GetWidget<SingUpController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Container(
                            height: size.height,
                            width: size.width,
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                          height: size.height,
                                          width: size.width,
                                          child: Stack(
                                              alignment: Alignment.topLeft,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Padding(
                                                        padding: getPadding(
                                                            bottom: 10),
                                                        child: CommonImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgPattern,
                                                            height:
                                                                getVerticalSize(
                                                                    318.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    375.00)))),
                                                Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Container(
                                                        height: getVerticalSize(
                                                            370.00),
                                                        width: size.width,
                                                        margin: getMargin(
                                                            top: 33,
                                                            bottom: 33),
                                                        decoration: BoxDecoration(
                                                            gradient: LinearGradient(
                                                                begin: Alignment(
                                                                    0.5,
                                                                    -3.0616171314629196e-17),
                                                                end: Alignment(0.5, 0.9999999999999999),
                                                                colors: [
                                                              ColorConstant
                                                                  .whiteA700,
                                                              ColorConstant
                                                                  .whiteA70000
                                                            ]))))
                                              ]))),
                                  CustomButton(
                                      width: 141,
                                      text: "lbl_login".tr,
                                      margin: getMargin(
                                          left: 117,
                                          top: 20,
                                          right: 117,
                                          bottom: 20),
                                      alignment: Alignment.bottomCenter),
                                  Align(
                                      alignment: Alignment.bottomRight,
                                      child: GestureDetector(
                                          onTap: () {
                                            onTapGoogleButton();
                                          },
                                          child: Container(
                                              margin: getMargin(
                                                  left: 25,
                                                  top: 193,
                                                  right: 25,
                                                  bottom: 193),
                                              decoration: AppDecoration
                                                  .outlineGray100
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder15),
                                              child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 31,
                                                            top: 16,
                                                            bottom: 16),
                                                        child: CommonImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgRefresh,
                                                            height:
                                                                getVerticalSize(
                                                                    25.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    24.00))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 12,
                                                            top: 22,
                                                            right: 34,
                                                            bottom: 21),
                                                        child: Text(
                                                            "lbl_google".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtBentonSansMedium14
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        0.50)))
                                                  ])))),
                                  CustomTextFormField(
                                      width: 152,
                                      focusNode: FocusNode(),
                                      controller:
                                          controller.facebookButtonController,
                                      hintText: "lbl_facebook".tr,
                                      margin: getMargin(
                                          left: 25,
                                          top: 193,
                                          right: 25,
                                          bottom: 193),
                                      fontStyle: TextFormFieldFontStyle
                                          .BentonSansMedium14,
                                      textInputAction: TextInputAction.done,
                                      alignment: Alignment.bottomLeft,
                                      prefix: Container(
                                          padding: getPadding(
                                              left: 8,
                                              top: 3,
                                              right: 8,
                                              bottom: 3),
                                          margin: getMargin(
                                              left: 22,
                                              top: 16,
                                              right: 13,
                                              bottom: 16),
                                          decoration: BoxDecoration(
                                              color: ColorConstant.indigo600,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      getHorizontalSize(
                                                          12.50))),
                                          child: CommonImageView(
                                              svgPath: ImageConstant.imgPlus)),
                                      prefixConstraints: BoxConstraints(
                                          minWidth: getSize(17.33),
                                          minHeight: getSize(17.33))),
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                          margin: getMargin(
                                              left: 25,
                                              top: 310,
                                              right: 25,
                                              bottom: 310),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                CustomTextFormField(
                                                    width: 325,
                                                    focusNode: FocusNode(),
                                                    controller: controller
                                                        .emailFormController,
                                                    hintText: "lbl_email".tr,
                                                    validator: (value) {
                                                      if (!isValidEmail(
                                                          value)) {
                                                        return "Please enter valid email";
                                                      }
                                                      return null;
                                                    }),
                                                CustomTextFormField(
                                                    width: 325,
                                                    focusNode: FocusNode(),
                                                    controller: controller
                                                        .passwordFormController,
                                                    hintText: "lbl_password".tr,
                                                    margin: getMargin(top: 12),
                                                    validator: (value) {
                                                      if (value == null ||
                                                          (!isValidPassword(
                                                              value,
                                                              isRequired:
                                                                  true))) {
                                                        return "Please enter valid password";
                                                      }
                                                      return null;
                                                    },
                                                    isObscureText: true)
                                              ]))),
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                          margin: getMargin(
                                              left: 79,
                                              top: 153,
                                              right: 79,
                                              bottom: 153),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Text(
                                                        "msg_login_to_your_a"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: AppStyle
                                                            .txtBentonSansBold20
                                                            .copyWith())),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 44,
                                                        top: 186,
                                                        right: 44),
                                                    child: Text(
                                                        "msg_or_continue_wit"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: AppStyle
                                                            .txtBentonSansBold12
                                                            .copyWith())),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 44,
                                                        top: 97,
                                                        right: 43),
                                                    child: Text(
                                                        "msg_forgot_your_pas"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: AppStyle
                                                            .txtBentonSansMedium12
                                                            .copyWith(
                                                                decoration:
                                                                    TextDecoration
                                                                        .underline)))
                                              ]))),
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                          margin: getMargin(
                                              left: 93,
                                              top: 47,
                                              right: 93,
                                              bottom: 47),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                    padding: getPadding(
                                                        left: 6, right: 7),
                                                    child: CommonImageView(
                                                        imagePath: ImageConstant
                                                            .imgImage44,
                                                        height: getVerticalSize(
                                                            139.00),
                                                        width:
                                                            getHorizontalSize(
                                                                175.00))),
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Text(
                                                        "lbl_foodninja".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtVigaRegular40
                                                            .copyWith(
                                                                letterSpacing:
                                                                    0.50))),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 13, right: 13),
                                                    child: Text(
                                                        "msg_deliever_favori"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterSemiBold13
                                                            .copyWith(
                                                                letterSpacing:
                                                                    1.00)))
                                              ])))
                                ])))))));
  }

  onTapGoogleButton() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }
}
