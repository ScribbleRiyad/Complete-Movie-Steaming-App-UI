import 'package:flutter/material.dart';
import 'package:movie_streaming_app/core/app_export.dart';

// ignore: must_be_immutable
class Listrectangle2ItemWidget extends StatelessWidget {
  Listrectangle2ItemWidget();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: CustomImageView(
          imagePath: ImageConstant.imgRectangle12078135x981,
          height: getVerticalSize(
            135,
          ),
          width: getHorizontalSize(
            98,
          ),
          radius: BorderRadius.circular(
            getHorizontalSize(
              10,
            ),
          ),
          margin: getMargin(
            right: 10,
          ),
        ),
      ),
    );
  }
}
