import 'package:flutter/material.dart';import 'package:movie_streaming_app/core/app_export.dart';import 'package:movie_streaming_app/widgets/custom_button.dart';import 'package:movie_streaming_app/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends StatelessWidget {TextEditingController emailaddressController = TextEditingController();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.black900, resizeToAvoidBottomInset: false, body: Container(width: double.maxFinite, padding: getPadding(left: 15, right: 15), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [Text("Forgot Password?", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsMedium24), Container(width: getHorizontalSize(327), margin: getMargin(top: 7, right: 15), child: Text("You forgot your password? don't worry, please enter your recovery email address", maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular14.copyWith(letterSpacing: getHorizontalSize(0.14)))), CustomTextFormField(focusNode: FocusNode(), controller: emailaddressController, hintText: "Email Address", margin: getMargin(top: 54), fontStyle: TextFormFieldFontStyle.PoppinsRegular16Bluegray100, textInputAction: TextInputAction.done, textInputType: TextInputType.emailAddress), CustomButton(height: getVerticalSize(50), text: "Submit", margin: getMargin(top: 35, bottom: 5), fontStyle: ButtonFontStyle.PoppinsMedium16WhiteA700, onTap: () {onTapSubmit(context);})])))); } 
onTapSubmit(BuildContext context) { Navigator.pushNamed(context, AppRoutes.otpVerificationScreen); } 
 }
