import 'controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:projectfigma/core/app_export.dart';
import 'package:projectfigma/widgets/custom_button.dart';

class HomeScreen extends GetWidget<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: size.height,
                        width: size.width,
                        child: Stack(children: [
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                  margin: getMargin(
                                      left: 13, top: 62, right: 13, bottom: 62),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                            width: getHorizontalSize(348.00),
                                            child: Text(
                                                "msg_food_ninja_is_w".tr,
                                                maxLines: null,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtBentonSansBold22
                                                    .copyWith())),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                width:
                                                    getHorizontalSize(244.00),
                                                margin: getMargin(
                                                    left: 53,
                                                    top: 20,
                                                    right: 51),
                                                child: Text(
                                                    "msg_enjoy_a_fast_an".tr,
                                                    maxLines: null,
                                                    textAlign: TextAlign.center,
                                                    style: AppStyle
                                                        .txtBentonSansBook12
                                                        .copyWith()))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 2, top: 41, right: 6),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      CustomButton(
                                                          width: 157,
                                                          text: "lbl_next".tr,
                                                          variant: ButtonVariant
                                                              .GradientBluegray600Bluegray600,
                                                          fontStyle: ButtonFontStyle
                                                              .BentonSansBold16Deeppurple50,
                                                          onTap: onTapBtnNext),
                                                      CustomButton(
                                                          width: 157,
                                                          text: "lbl_next".tr,
                                                          variant: ButtonVariant
                                                              .GradientDeeppurple50Deeppurple50,
                                                          fontStyle: ButtonFontStyle
                                                              .BentonSansBold16Bluegray600)
                                                    ])))
                                      ])))
                        ]))))));
  }

  onTapBtnNext() {
    Get.toNamed(AppRoutes.singUpScreen);
  }
}
