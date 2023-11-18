import '../notification_screen/widgets/notification_item_widget.dart';import 'package:flutter/material.dart';import 'package:movie_streaming_app/core/app_export.dart';import 'package:movie_streaming_app/widgets/app_bar/appbar_iconbutton_1.dart';import 'package:movie_streaming_app/widgets/app_bar/appbar_title.dart';import 'package:movie_streaming_app/widgets/app_bar/custom_app_bar.dart';class NotificationScreen extends StatelessWidget {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.black900, appBar: CustomAppBar(height: getVerticalSize(51), leadingWidth: 60, leading: AppbarIconbutton1(svgPath: ImageConstant.imgArrowleftWhiteA700, margin: getMargin(left: 25, top: 8, bottom: 8), onTap: () {onTapArrowleft2(context);}), centerTitle: true, title: AppbarTitle(text: "Notifications")), body: Padding(padding: getPadding(left: 25, top: 23, right: 25, bottom: 80), child: ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: getVerticalSize(16));}, itemCount: 6, itemBuilder: (context, index) {return NotificationItemWidget();})))); } 
onTapArrowleft2(BuildContext context) { Navigator.pop(context); } 
 }
