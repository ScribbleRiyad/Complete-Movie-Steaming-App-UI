import 'package:flutter/material.dart';import 'package:movie_streaming_app/core/app_export.dart';import 'package:movie_streaming_app/widgets/custom_button.dart';class ResetPasswordSuccessScreen extends StatelessWidget {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.black900, body: Container(width: double.maxFinite, padding: getPadding(left: 16, right: 16), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [Text("Congrats!", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsMedium24), Container(width: getHorizontalSize(310), margin: getMargin(top: 7, right: 32), child: Text("Congrats your password has been updated please continue to login", maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular14.copyWith(letterSpacing: getHorizontalSize(0.14)))), CustomButton(height: getVerticalSize(50), text: "Login", margin: getMargin(top: 35, bottom: 5), fontStyle: ButtonFontStyle.PoppinsMedium16WhiteA700, onTap: () {onTapLogin(context);})])))); } 
onTapLogin(BuildContext context) { Navigator.pushNamed(context, AppRoutes.loginScreen); } 
 }
