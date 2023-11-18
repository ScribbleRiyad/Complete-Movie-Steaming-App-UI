import 'package:flutter/material.dart';
import 'package:movie_streaming_app/core/app_export.dart';

// ignore: must_be_immutable
class SliderrectangletenItemWidget extends StatelessWidget {
  SliderrectangletenItemWidget();

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgImage6297x375,
      height: getVerticalSize(
        297,
      ),
      width: getHorizontalSize(
        375,
      ),
    );
  }
}
