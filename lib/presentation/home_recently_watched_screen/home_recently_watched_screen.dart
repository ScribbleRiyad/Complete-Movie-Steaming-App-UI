import '../home_recently_watched_screen/widgets/listall1_item_widget.dart';
import '../home_recently_watched_screen/widgets/listrectangle1_item_widget.dart';
import '../home_recently_watched_screen/widgets/listrectanglesix_item_widget.dart';
import '../home_recently_watched_screen/widgets/sliderrectangleten_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie_streaming_app/core/app_export.dart';
import 'package:movie_streaming_app/presentation/downloaded_tab_container_page/downloaded_tab_container_page.dart';
import 'package:movie_streaming_app/presentation/home_page/home_page.dart';
import 'package:movie_streaming_app/presentation/profile_page/profile_page.dart';
import 'package:movie_streaming_app/presentation/saved_page/saved_page.dart';
import 'package:movie_streaming_app/presentation/search_page/search_page.dart';
import 'package:movie_streaming_app/widgets/custom_bottom_bar.dart';

class HomeRecentlyWatchedScreen extends StatelessWidget {
  int silderIndex = 1;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.black900,
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CarouselSlider.builder(
                  options: CarouselOptions(
                    height: getVerticalSize(
                      297,
                    ),
                    initialPage: 0,
                    autoPlay: true,
                    viewportFraction: 1.0,
                    enableInfiniteScroll: false,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (index, reason) {
                      silderIndex = index;
                    },
                  ),
                  itemCount: 3,
                  itemBuilder: (context, index, realIndex) {
                    return SliderrectangletenItemWidget();
                  },
                ),
                Padding(
                  padding: getPadding(
                    left: 16,
                    top: 10,
                  ),
                  child: Text(
                    "Last watched",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsMedium14WhiteA700,
                  ),
                ),
                Container(
                  height: getVerticalSize(
                    171,
                  ),
                  child: ListView.separated(
                    padding: getPadding(
                      left: 16,
                      top: 11,
                    ),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: getVerticalSize(
                          10,
                        ),
                      );
                    },
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return ListrectanglesixItemWidget();
                    },
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 16,
                    top: 24,
                  ),
                  child: Text(
                    "Categories",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsSemiBold16,
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: getVerticalSize(
                      41,
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
                            8,
                          ),
                        );
                      },
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Listall1ItemWidget();
                      },
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 16,
                      top: 17,
                      right: 17,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Most Popular",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsSemiBold16,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 2,
                            bottom: 3,
                          ),
                          child: Text(
                            "See all",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsRegular12WhiteA700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: getVerticalSize(
                      185,
                    ),
                    child: ListView.separated(
                      padding: getPadding(
                        left: 16,
                        top: 7,
                      ),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: getVerticalSize(
                            15,
                          ),
                        );
                      },
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Listrectangle1ItemWidget();
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Navigator.pushNamed(
                navigatorKey.currentContext!, getCurrentRoute(type));
          },
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Search:
        return AppRoutes.searchPage;
      case BottomBarEnum.Saved:
        return AppRoutes.savedPage;
      case BottomBarEnum.Downloads:
        return AppRoutes.downloadedTabContainerPage;
      case BottomBarEnum.Me:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.searchPage:
        return SearchPage();
      case AppRoutes.savedPage:
        return SavedPage();
      case AppRoutes.downloadedTabContainerPage:
        return DownloadedTabContainerPage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }
}
