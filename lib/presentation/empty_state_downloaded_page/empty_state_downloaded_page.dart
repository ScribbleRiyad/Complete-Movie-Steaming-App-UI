import 'package:flutter/material.dart';
import 'package:movie_streaming_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class EmptyStateDownloadedPage extends StatefulWidget {
  @override
  _EmptyStateDownloadedPageState createState() =>
      _EmptyStateDownloadedPageState();
}

class _EmptyStateDownloadedPageState extends State<EmptyStateDownloadedPage>
    with AutomaticKeepAliveClientMixin<EmptyStateDownloadedPage> {
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
                    left: 59,
                    top: 115,
                    right: 59,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgMaskgroupGray40001184x184,
                        height: getSize(
                          184,
                        ),
                        width: getSize(
                          184,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 31,
                        ),
                        child: Text(
                          "No videos yet",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium16,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 8,
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
