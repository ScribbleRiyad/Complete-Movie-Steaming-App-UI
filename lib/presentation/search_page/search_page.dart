import '../search_page/widgets/chipviewmarvel_item_widget.dart';
import '../search_page/widgets/list_item_widget.dart';
import '../search_page/widgets/listrectangle2_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:movie_streaming_app/core/app_export.dart';
import 'package:movie_streaming_app/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class SearchPage extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.black900,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillBlack900,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: CustomSearchView(
                      focusNode: FocusNode(),
                      controller: searchController,
                      hintText: "Search by title, genre, actor",
                      margin: getMargin(
                        left: 16,
                        right: 16,
                      ),
                      alignment: Alignment.center,
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
                      suffix: Padding(
                        padding: EdgeInsets.only(
                          right: getHorizontalSize(
                            15,
                          ),
                        ),
                        child: IconButton(
                          onPressed: () {
                            searchController.clear();
                          },
                          icon: Icon(
                            Icons.clear,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 23,
                    ),
                    child: Text(
                      "Recent Searches",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular14WhiteA700,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 15,
                    ),
                    child: Wrap(
                      runSpacing: getVerticalSize(
                        5,
                      ),
                      spacing: getHorizontalSize(
                        5,
                      ),
                      children: List<Widget>.generate(
                          4, (index) => ChipviewmarvelItemWidget()),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 25,
                    ),
                    child: Text(
                      "Popular",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular14WhiteA700,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: getVerticalSize(
                        148,
                      ),
                      child: ListView.separated(
                        padding: getPadding(
                          left: 16,
                          top: 13,
                        ),
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: getVerticalSize(
                              10,
                            ),
                          );
                        },
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Listrectangle2ItemWidget();
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 24,
                    ),
                    child: Text(
                      "Recommendations for you",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular14WhiteA700,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: getVerticalSize(
                        149,
                      ),
                      child: ListView.separated(
                        padding: getPadding(
                          left: 16,
                          top: 14,
                        ),
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: getVerticalSize(
                              10,
                            ),
                          );
                        },
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return ListItemWidget();
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
