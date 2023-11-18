import '../similiar_page/widgets/similiar_item_widget.dart';import 'package:flutter/material.dart';import 'package:movie_streaming_app/core/app_export.dart';class SimiliarPage extends StatefulWidget {@override _SimiliarPageState createState() =>  _SimiliarPageState();
 }
class _SimiliarPageState extends State<SimiliarPage> with  AutomaticKeepAliveClientMixin<SimiliarPage> {@override bool get wantKeepAlive =>  true;
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: Colors.transparent, body: Container(width: double.maxFinite, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Container(height: getVerticalSize(181), child: ListView.separated(padding: getPadding(left: 9, top: 27, right: 10), scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(height: getVerticalSize(12));}, itemCount: 3, itemBuilder: (context, index) {return SimiliarItemWidget();}))])))); } 
 }
