import 'package:flutter/material.dart';
import 'package:movie_streaming_app/core/app_export.dart';

// ignore: must_be_immutable
class ListrectanglesixItemWidget extends StatelessWidget {
  ListrectanglesixItemWidget();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        margin: getMargin(
          right: 10,
        ),
        decoration: AppDecoration.fillBluegray90001.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: getVerticalSize(
                86,
              ),
              width: getHorizontalSize(
                214,
              ),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle6,
                    height: getVerticalSize(
                      86,
                    ),
                    width: getHorizontalSize(
                      214,
                    ),
                    radius: BorderRadius.only(
                      topLeft: Radius.circular(
                        getHorizontalSize(
                          10,
                        ),
                      ),
                      topRight: Radius.circular(
                        getHorizontalSize(
                          10,
                        ),
                      ),
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: getPadding(
                        bottom: 7,
                      ),
                      child: Container(
                        height: getVerticalSize(
                          2,
                        ),
                        width: getHorizontalSize(
                          194,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.whiteA70087,
                        ),
                        child: ClipRRect(
                          child: LinearProgressIndicator(
                            value: 0.24,
                            backgroundColor: ColorConstant.whiteA70087,
                            valueColor: AlwaysStoppedAnimation<Color>(
                              ColorConstant.whiteA700,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: getHorizontalSize(
                186,
              ),
              margin: getMargin(
                left: 10,
                top: 7,
              ),
              child: Text(
                "",
                maxLines: null,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsMedium11,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  top: 2,
                  bottom: 11,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 7,
                      ),
                      child: Text(
                        "",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsLight8,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 9,
                        top: 7,
                      ),
                      child: Text(
                        "",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsLight8,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgCall,
                      height: getSize(
                        20,
                      ),
                      width: getSize(
                        20,
                      ),
                      margin: getMargin(
                        left: 121,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
