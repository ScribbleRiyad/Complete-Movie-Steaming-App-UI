import 'package:flutter/material.dart';
import 'package:movie_streaming_app/core/app_export.dart';
import 'package:movie_streaming_app/presentation/downloaded_tab_container_page/downloaded_tab_container_page.dart';
import 'package:movie_streaming_app/presentation/empty_state_downloaded_page/empty_state_downloaded_page.dart';
import 'package:movie_streaming_app/presentation/empty_state_downloading_page/empty_state_downloading_page.dart';
import 'package:movie_streaming_app/presentation/home_page/home_page.dart';
import 'package:movie_streaming_app/presentation/profile_page/profile_page.dart';
import 'package:movie_streaming_app/presentation/saved_page/saved_page.dart';
import 'package:movie_streaming_app/presentation/search_page/search_page.dart';
import 'package:movie_streaming_app/widgets/custom_bottom_bar.dart';

class EmptyStateDownloadedTabContainerScreen extends StatefulWidget {
  @override
  _EmptyStateDownloadedTabContainerScreenState createState() =>
      _EmptyStateDownloadedTabContainerScreenState();
}

class _EmptyStateDownloadedTabContainerScreenState
    extends State<EmptyStateDownloadedTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.black900,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  top: 10,
                ),
                child: Text(
                  "Download",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsMedium18,
                ),
              ),
              Container(
                height: getVerticalSize(
                  40,
                ),
                width: getHorizontalSize(
                  300,
                ),
                margin: getMargin(
                  top: 35,
                ),
                child: TabBar(
                  controller: tabController,
                  labelColor: ColorConstant.red700,
                  labelStyle: TextStyle(
                    fontSize: getFontSize(
                      14,
                    ),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                  unselectedLabelColor: ColorConstant.whiteA70087,
                  unselectedLabelStyle: TextStyle(
                    fontSize: getFontSize(
                      14,
                    ),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                  indicatorColor: ColorConstant.red700,
                  tabs: [
                    Tab(
                      child: Text(
                        "Downloaded",
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Downloading",
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: getVerticalSize(
                  574,
                ),
                child: TabBarView(
                  controller: tabController,
                  children: [
                    EmptyStateDownloadedPage(),
                    EmptyStateDownloadingPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Navigator.pushNamed(
                widget.navigatorKey.currentContext!, getCurrentRoute(type));
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
