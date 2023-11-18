import 'package:flutter/material.dart';
import 'package:movie_streaming_app/core/app_export.dart';
import 'package:movie_streaming_app/widgets/custom_button.dart';

// ignore: must_be_immutable
class ChooseplanItemWidget extends StatelessWidget {
  ChooseplanItemWidget({this.onTapSubscribeplan});

  VoidCallback? onTapSubscribeplan;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Container(
        padding: getPadding(
          left: 25,
          top: 22,
          right: 25,
          bottom: 22,
        ),
        decoration: AppDecoration.cardBg.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: getPadding(
                top: 4,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsMedium14WhiteA700,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 3,
                        ),
                        child: Text(
                          "Including tax and auto-renew",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsRegular10Bluegray10003,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: getPadding(
                      top: 2,
                      bottom: 4,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "50",
                            style: TextStyle(
                              color: ColorConstant.whiteA700,
                              fontSize: getFontSize(
                                25,
                              ),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: "/week",
                            style: TextStyle(
                              color: ColorConstant.blueGray100,
                              fontSize: getFontSize(
                                10,
                              ),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
            CustomButton(
              height: getVerticalSize(
                40,
              ),
              text: "Subscribe plan",
              margin: getMargin(
                top: 18,
              ),
              shape: ButtonShape.CircleBorder20,
              padding: ButtonPadding.PaddingAll8,
              fontStyle: ButtonFontStyle.PoppinsRegular14WhiteA700,
              onTap: () {
                onTapSubscribeplan(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
