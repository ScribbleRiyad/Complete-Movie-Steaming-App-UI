import 'package:flutter/material.dart';
import 'package:movie_streaming_app/core/app_export.dart';
import 'package:movie_streaming_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class AppbarIconbutton2 extends StatelessWidget {
  AppbarIconbutton2({this.imagePath, this.svgPath, this.margin, this.onTap});

  String? imagePath;

  String? svgPath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButton(
          height: 35,
          width: 35,
          padding: IconButtonPadding.PaddingAll4,
          child: CustomImageView(
            svgPath: svgPath,
            imagePath: imagePath,
          ),
        ),
      ),
    );
  }
}
