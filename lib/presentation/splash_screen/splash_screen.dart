import 'package:flutter/material.dart';
import 'package:movie_streaming_app/core/app_export.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.red700,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: getMargin(
                  bottom: 5,
                ),
                color: ColorConstant.whiteA700,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: ColorConstant.whiteA700,
                    width: getHorizontalSize(
                      4,
                    ),
                  ),
                  borderRadius: BorderRadiusStyle.circleBorder45,
                ),
                child: Container(
                  height: getSize(
                    90,
                  ),
                  width: getSize(
                    90,
                  ),
                  padding: getPadding(
                    all: 24,
                  ),
                  decoration: AppDecoration.white.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder45,
                  ),
                  child: Stack(
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgPlay,
                        height: getSize(
                          41,
                        ),
                        width: getSize(
                          41,
                        ),
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
