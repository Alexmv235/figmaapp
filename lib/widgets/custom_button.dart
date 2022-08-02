import 'package:flutter/material.dart';
import 'package:projectfigma/core/app_export.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.onTap,
      this.width,
      this.margin,
      this.text});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  VoidCallback? onTap;

  double? width;

  EdgeInsetsGeometry? margin;

  String? text;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: getHorizontalSize(width ?? 0),
        margin: margin,
        padding: _setPadding(),
        decoration: _buildDecoration(),
        child: Text(
          text ?? "",
          textAlign: TextAlign.center,
          style: _setFontStyle(),
        ),
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      borderRadius: _setBorderRadius(),
      gradient: _setGradient(),
    );
  }

  _setPadding() {
    switch (padding) {
      default:
        return getPadding(
          all: 18,
        );
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            15.00,
          ),
        );
    }
  }

  _setGradient() {
    switch (variant) {
      case ButtonVariant.GradientBluegray600Bluegray600:
        return LinearGradient(
          begin: Alignment(
            -1.4180527863061343e-9,
            -0.061403480546041056,
          ),
          end: Alignment(
            1.000000006060046,
            1.114035163419933,
          ),
          colors: [
            ColorConstant.bluegray600,
            ColorConstant.bluegray600,
          ],
        );
      case ButtonVariant.GradientDeeppurple50Deeppurple50:
        return LinearGradient(
          begin: Alignment(
            -1.4180527863061343e-9,
            -0.061403480546041056,
          ),
          end: Alignment(
            1.000000006060046,
            1.114035163419933,
          ),
          colors: [
            ColorConstant.deepPurple50,
            ColorConstant.deepPurple50,
          ],
        );
      default:
        return LinearGradient(
          begin: Alignment(
            -1.4180527863061343e-9,
            -0.061403480546041056,
          ),
          end: Alignment(
            1.000000006060046,
            1.114035163419933,
          ),
          colors: [
            ColorConstant.greenA200,
            ColorConstant.greenA700,
          ],
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.BentonSansBold16Deeppurple50:
        return TextStyle(
          color: ColorConstant.deepPurple50,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'BentonSans Bold',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.BentonSansBold16Bluegray600:
        return TextStyle(
          color: ColorConstant.bluegray600,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'BentonSans Bold',
          fontWeight: FontWeight.w400,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'BentonSans Bold',
          fontWeight: FontWeight.w400,
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder15,
}
enum ButtonPadding {
  PaddingAll18,
}
enum ButtonVariant {
  GradientGreenA200GreenA700,
  GradientBluegray600Bluegray600,
  GradientDeeppurple50Deeppurple50,
}
enum ButtonFontStyle {
  BentonSansBold16,
  BentonSansBold16Deeppurple50,
  BentonSansBold16Bluegray600,
}
