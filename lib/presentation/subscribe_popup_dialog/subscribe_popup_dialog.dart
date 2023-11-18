import 'package:flutter/material.dart';import 'package:movie_streaming_app/core/app_export.dart';import 'package:movie_streaming_app/widgets/custom_button.dart';import 'package:movie_streaming_app/widgets/custom_checkbox.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SubscribePopupDialog extends StatelessWidget {bool isCheckbox = false;

bool isCheckbox1 = false;

bool isCheckbox2 = false;

@override Widget build(BuildContext context) { return Container(width: getHorizontalSize(325), padding: getPadding(left: 31, top: 34, right: 31, bottom: 34), decoration: AppDecoration.fillBluegray800.copyWith(borderRadius: BorderRadiusStyle.roundedBorder30), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(svgPath: ImageConstant.imgIllustration, height: getVerticalSize(58), width: getHorizontalSize(78)), Container(width: getHorizontalSize(213), margin: getMargin(left: 25, top: 20, right: 25), child: Text("Be a premium user and get more features", maxLines: null, textAlign: TextAlign.center, style: AppStyle.txtPoppinsMedium18WhiteA700ab)), Container(margin: getMargin(left: 19, top: 31, right: 19), decoration: BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [CustomCheckbox(text: "Ad-free", value: isCheckbox, fontStyle: CheckboxFontStyle.PoppinsRegular12WhiteA700a2_1, onChange: (value) {isCheckbox = value;}), CustomCheckbox(text: "Get access to all videos", value: isCheckbox1, margin: getMargin(top: 15, right: 44), fontStyle: CheckboxFontStyle.PoppinsRegular12WhiteA700a2_1, onChange: (value) {isCheckbox1 = value;}), CustomCheckbox(text: "Cancel anytime and anywhere", value: isCheckbox2, margin: getMargin(top: 15), fontStyle: CheckboxFontStyle.PoppinsRegular12WhiteA700a2_1, onChange: (value) {isCheckbox2 = value;})])), CustomButton(height: getVerticalSize(50), text: "Subscribe", margin: getMargin(top: 35, bottom: 2), onTap: () {onTapSubscribe(context);})])); } 
onTapSubscribe(BuildContext context) { Navigator.pushNamed(context, AppRoutes.choosePlanScreen); } 
 }
