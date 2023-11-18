import '../search_result_screen/widgets/searchresult_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:movie_streaming_app/core/app_export.dart';
import 'package:movie_streaming_app/widgets/custom_search_view.dart';

class SearchResultScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.black900,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 15,
            right: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomSearchView(
                focusNode: FocusNode(),
                controller: searchController,
                hintText: "Comedy",
                margin: getMargin(
                  left: 1,
                ),
                padding: SearchViewPadding.PaddingT16,
                prefix: Container(
                  margin: getMargin(
                    left: 16,
                    top: 13,
                    right: 20,
                    bottom: 13,
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgSearch,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(
                    50,
                  ),
                ),
                suffix: Container(
                  padding: getPadding(
                    all: 7,
                  ),
                  margin: getMargin(
                    left: 30,
                    top: 13,
                    right: 16,
                    bottom: 13,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.whiteA70063,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        11,
                      ),
                    ),
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.img0c2c6f25a3334d8595d91f22e636033f,
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(
                    50,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 1,
                  top: 24,
                ),
                child: Text(
                  "Results for \"comedy\"",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsRegular14WhiteA700,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 1,
                  top: 14,
                ),
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: getVerticalSize(
                      141,
                    ),
                    crossAxisCount: 3,
                    mainAxisSpacing: getHorizontalSize(
                      20,
                    ),
                    crossAxisSpacing: getHorizontalSize(
                      20,
                    ),
                  ),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 12,
                  itemBuilder: (context, index) {
                    return SearchresultItemWidget();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
