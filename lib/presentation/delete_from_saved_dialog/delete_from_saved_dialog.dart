import 'package:flutter/material.dart';
import 'package:movie_streaming_app/core/app_export.dart';
import 'package:movie_streaming_app/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class DeleteFromSavedDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: getHorizontalSize(
        325,
      ),
      padding: getPadding(
        left: 31,
        top: 34,
        right: 31,
        bottom: 34,
      ),
      decoration: AppDecoration.fillBluegray800.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgTrash98x98,
            height: getSize(
              98,
            ),
            width: getSize(
              98,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 22,
            ),
            child: Text(
              "Are you sure ?",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsMedium18,
            ),
          ),
          Container(
            width: getHorizontalSize(
              257,
            ),
            margin: getMargin(
              left: 2,
              top: 7,
              right: 2,
            ),
            child: Text(
              "By doing this, the saved files will be deleted from your storage list",
              maxLines: null,
              textAlign: TextAlign.center,
              style: AppStyle.txtPoppinsRegular12WhiteA700a2,
            ),
          ),
          CustomButton(
            height: getVerticalSize(
              50,
            ),
            text: "Cancel",
            margin: getMargin(
              top: 34,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 28,
              bottom: 12,
            ),
            child: Text(
              "Delete",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsRegular16,
            ),
          ),
        ],
      ),
    );
  }
}
