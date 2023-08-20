library responsive_helper;

import 'package:flutter/material.dart';

//ignore: must_be_immutable
class ResponsiveWidget extends StatelessWidget {
  /// Design to show if there is a big phone
  Widget? bigPhone;

  /// Design to show if there is a smaller phone
  Widget? smallPhone;

  /// Design to show if the screen is landscape
  Widget? landscape;

  /// Value of height bellow which the phone will be considered as a small phone.
  int? smallPhoneWhenHeightIsLesserThan;

  /// Value of height after which the phone will be considered as a small phone.
  int? smallPhoneWhenHeightIsMoreThan;

  /// Value of height after which the phone will be considered as a big phone.
  int? bigPhoneWhenHeightIsMoreThan;

  /// Value of height bellow which the phone will be considered as a big phone.
  int? bigPhoneWhenHeightIsSmallerThan;

  /// Value of width bellow which the phone will be considered as a small phone.
  int? smallPhoneWhenWidthIsLesserThan;

  /// Value of width after which the phone will be considered as a small phone.
  int? smallPhoneWhenWidthIsMoreThan;

  /// Value of width after which the phone will be considered as a big phone.
  int? bigPhoneWhenWidthIsMoreThan;

  /// Value of width bellow which the phone will be considered as a big phone.
  int? bigPhoneWhenWidthIsSmallerThan;

  ResponsiveWidget({Key? key, this.bigPhone, this.smallPhone, this.landscape})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > constraints.maxHeight && landscape != null) {
        return landscape!;
      } else if (constraints.maxHeight < 750 && smallPhone != null) {
        return smallPhone!;
      } else if (bigPhone != null) {
        return bigPhone!;
      } else {
        return SizedBox();
      }
    });
  }
}

int? mHeight;
int? mWidth;

initializeSize(

    /// Give the width of the screen which is in the User Interface(UI) from Figma/Adobe xD/Photoshop/etc
    int designWidth,

    /// Give the height of the screen which is in the User Interface(UI) from Figma/Adobe xD/Photoshop/etc
    int designHeight) {
  mWidth = designWidth;
  mHeight = designHeight;
}

// Works on doubles
extension responsiveHelper on double {
  /// .h can be used to assign height.
  double h(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context).size;
    var divide = (mHeight ?? 0) / this;
    var height1 = _mediaQuery.height / divide;
    return height1;
  }

  /// .w can be used to assign width
  double w(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context).size;

    var divide = (mWidth ?? 0) / this;
    var width1 = _mediaQuery.width / divide;
    return width1;
  }

  /// .t can be used to figure out the font size of a text
  double t(BuildContext context) {
    return (h(context) + w(context)) / 2;
  }
}

// Works on integers
extension responsiveHelperInt on int {
  /// .h can be used to assign height
  double h(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context).size;
    var divide = (mHeight ?? 0) / this;
    var height1 = _mediaQuery.height / divide;
    return height1;
  }

  /// .w can be used to assign width
  double w(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context).size;

    var divide = (mWidth ?? 0) / this;
    var width1 = _mediaQuery.width / divide;
    return width1;
  }

  /// .t can be used to figure out the font size of a text
  double t(BuildContext context) {
    return (h(context) + w(context)) / 2;
  }
}
