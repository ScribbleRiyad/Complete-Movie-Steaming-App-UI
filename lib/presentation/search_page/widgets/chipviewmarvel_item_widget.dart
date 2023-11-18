import 'package:flutter/material.dart';
import 'package:movie_streaming_app/core/app_export.dart';

// ignore: must_be_immutable
class ChipviewmarvelItemWidget extends StatelessWidget {
  ChipviewmarvelItemWidget();

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: getPadding(
        right: 26,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "Marvel",
        textAlign: TextAlign.left,
        style: TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
      ),
      avatar: CustomImageView(
        svgPath: ImageConstant.imgClock,
        height: getSize(
          14,
        ),
        width: getSize(
          14,
        ),
        margin: getMargin(
          right: 10,
        ),
      ),
      selected: false,
      backgroundColor: ColorConstant.gray900,
      selectedColor: ColorConstant.gray900,
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            15,
          ),
        ),
      ),
      onSelected: (value) {},
    );
  }
}
