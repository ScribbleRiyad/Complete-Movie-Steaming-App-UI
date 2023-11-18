import 'package:flutter/material.dart';
import 'package:movie_streaming_app/core/app_export.dart';
import 'package:movie_streaming_app/widgets/custom_button.dart';
import 'package:movie_streaming_app/widgets/custom_checkbox.dart';

// ignore_for_file: must_be_immutable
class PaymentSuccesfulPopupDialog extends StatelessWidget {
  bool isCheckbox = false;

  bool isCheckbox1 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getHorizontalSize(
        325,
      ),
      padding: getPadding(
        left: 29,
        top: 34,
        right: 29,
        bottom: 34,
      ),
      decoration: AppDecoration.fillBluegray800.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: getVerticalSize(
                101,
              ),
              width: getHorizontalSize(
                92,
              ),
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgVector92,
                          height: getVerticalSize(
                            5,
                          ),
                          width: getHorizontalSize(
                            6,
                          ),
                          margin: getMargin(
                            left: 34,
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            45,
                          ),
                          width: getHorizontalSize(
                            83,
                          ),
                          margin: getMargin(
                            top: 4,
                          ),
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgReply20x11,
                                height: getVerticalSize(
                                  20,
                                ),
                                width: getHorizontalSize(
                                  11,
                                ),
                                alignment: Alignment.bottomLeft,
                                margin: getMargin(
                                  left: 16,
                                  bottom: 1,
                                ),
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgSignal,
                                height: getVerticalSize(
                                  20,
                                ),
                                width: getHorizontalSize(
                                  11,
                                ),
                                alignment: Alignment.bottomRight,
                                margin: getMargin(
                                  right: 16,
                                  bottom: 1,
                                ),
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgVector86,
                                height: getVerticalSize(
                                  24,
                                ),
                                width: getHorizontalSize(
                                  6,
                                ),
                                alignment: Alignment.bottomLeft,
                                margin: getMargin(
                                  left: 27,
                                ),
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgVector89,
                                height: getVerticalSize(
                                  24,
                                ),
                                width: getHorizontalSize(
                                  6,
                                ),
                                alignment: Alignment.bottomRight,
                                margin: getMargin(
                                  right: 27,
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: getPadding(
                                    left: 40,
                                    right: 39,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: getSize(
                                          1,
                                        ),
                                        width: getSize(
                                          1,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.amber300,
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              1,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: SizedBox(
                                          height: getVerticalSize(
                                            19,
                                          ),
                                          child: VerticalDivider(
                                            width: getHorizontalSize(
                                              1,
                                            ),
                                            thickness: getVerticalSize(
                                              1,
                                            ),
                                            color: ColorConstant.deepOrange400,
                                            indent: getHorizontalSize(
                                              1,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: getPadding(
                                    left: 30,
                                    right: 30,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                        svgPath: ImageConstant.imgStar1,
                                        height: getSize(
                                          22,
                                        ),
                                        width: getSize(
                                          22,
                                        ),
                                        radius: BorderRadius.circular(
                                          getHorizontalSize(
                                            1,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: getSize(
                                          1,
                                        ),
                                        width: getSize(
                                          1,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.green300,
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              1,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgStar2,
                                height: getSize(
                                  21,
                                ),
                                width: getSize(
                                  21,
                                ),
                                radius: BorderRadius.circular(
                                  getHorizontalSize(
                                    1,
                                  ),
                                ),
                                alignment: Alignment.centerLeft,
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgStar3,
                                height: getSize(
                                  21,
                                ),
                                width: getSize(
                                  21,
                                ),
                                radius: BorderRadius.circular(
                                  getHorizontalSize(
                                    1,
                                  ),
                                ),
                                alignment: Alignment.centerRight,
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgVector90Amber300,
                                height: getVerticalSize(
                                  6,
                                ),
                                width: getHorizontalSize(
                                  5,
                                ),
                                alignment: Alignment.topLeft,
                                margin: getMargin(
                                  left: 13,
                                  top: 7,
                                ),
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgVector91Blue400,
                                height: getSize(
                                  4,
                                ),
                                width: getSize(
                                  4,
                                ),
                                alignment: Alignment.topRight,
                                margin: getMargin(
                                  top: 7,
                                  right: 17,
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  height: getSize(
                                    1,
                                  ),
                                  width: getSize(
                                    1,
                                  ),
                                  margin: getMargin(
                                    left: 25,
                                    top: 17,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.amberA700,
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        1,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  height: getSize(
                                    1,
                                  ),
                                  width: getSize(
                                    1,
                                  ),
                                  margin: getMargin(
                                    top: 17,
                                    right: 24,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.blue400,
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        1,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  height: getSize(
                                    1,
                                  ),
                                  width: getSize(
                                    1,
                                  ),
                                  margin: getMargin(
                                    top: 15,
                                    right: 23,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.deepOrange400,
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        1,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  height: getSize(
                                    1,
                                  ),
                                  width: getSize(
                                    1,
                                  ),
                                  margin: getMargin(
                                    left: 22,
                                    top: 15,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.deepOrange400,
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        1,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgHomeYellow300,
                          height: getVerticalSize(
                            37,
                          ),
                          width: getHorizontalSize(
                            63,
                          ),
                          alignment: Alignment.center,
                          margin: getMargin(
                            top: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgMinimize,
                    height: getVerticalSize(
                      8,
                    ),
                    width: getHorizontalSize(
                      7,
                    ),
                    alignment: Alignment.topLeft,
                    margin: getMargin(
                      top: 11,
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgMinimize,
                    height: getVerticalSize(
                      8,
                    ),
                    width: getHorizontalSize(
                      7,
                    ),
                    alignment: Alignment.bottomLeft,
                    margin: getMargin(
                      left: 6,
                      bottom: 27,
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgMinimize,
                    height: getVerticalSize(
                      8,
                    ),
                    width: getHorizontalSize(
                      7,
                    ),
                    alignment: Alignment.topRight,
                    margin: getMargin(
                      right: 7,
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgMinimize,
                    height: getVerticalSize(
                      8,
                    ),
                    width: getHorizontalSize(
                      7,
                    ),
                    alignment: Alignment.bottomRight,
                    margin: getMargin(
                      bottom: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: getHorizontalSize(
                216,
              ),
              margin: getMargin(
                left: 25,
                top: 21,
                right: 24,
              ),
              child: Text(
                "Congrats your package is active",
                maxLines: null,
                textAlign: TextAlign.center,
                style: AppStyle.txtPoppinsMedium18WhiteA700ab,
              ),
            ),
          ),
          CustomCheckbox(
            text: "Active on 20 February 2022",
            value: isCheckbox,
            margin: getMargin(
              top: 36,
              right: 66,
            ),
            fontStyle: CheckboxFontStyle.PoppinsRegular12WhiteA700a2_1,
            onChange: (value) {
              isCheckbox = value;
            },
          ),
          CustomCheckbox(
            text: "Auto extend",
            value: isCheckbox1,
            margin: getMargin(
              top: 20,
            ),
            fontStyle: CheckboxFontStyle.PoppinsRegular12WhiteA700a2_1,
            onChange: (value) {
              isCheckbox1 = value;
            },
          ),
          CustomButton(
            height: getVerticalSize(
              50,
            ),
            text: "Watch Now",
            margin: getMargin(
              left: 1,
              top: 36,
              bottom: 2,
            ),
          ),
        ],
      ),
    );
  }
}
