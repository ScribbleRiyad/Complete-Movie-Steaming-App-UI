import 'package:flutter/material.dart';
import 'package:movie_streaming_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class EmptyStateDownloadingPage extends StatefulWidget {
  @override
  _EmptyStateDownloadingPageState createState() =>
      _EmptyStateDownloadingPageState();
}

class _EmptyStateDownloadingPageState extends State<EmptyStateDownloadingPage>
    with AutomaticKeepAliveClientMixin<EmptyStateDownloadingPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 61,
                    top: 115,
                    right: 57,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgMaskgroup184x184,
                        height: getSize(
                          184,
                        ),
                        width: getSize(
                          184,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 29,
                        ),
                        child: Text(
                          "No videos to download",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium16,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 10,
                        ),
                        child: Text(
                          "Let's find and download your favorite video",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsRegular12Bluegray10001,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
