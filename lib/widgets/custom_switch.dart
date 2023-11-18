import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:movie_streaming_app/core/app_export.dart';

class CustomSwitch extends StatelessWidget {
  CustomSwitch({this.alignment, this.margin, this.value, this.onChanged});

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  bool? value;

  Function(bool)? onChanged;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildSwitchWidget(),
          )
        : _buildSwitchWidget();
  }

  _buildSwitchWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: FlutterSwitch(
        value: value ?? false,
        height: getHorizontalSize(20),
        width: getHorizontalSize(38),
        toggleSize: 16,
        borderRadius: getHorizontalSize(
          10.00,
        ),
        activeColor: ColorConstant.whiteA70075,
        activeToggleColor: ColorConstant.whiteA700,
        inactiveColor: ColorConstant.whiteA70063,
        inactiveToggleColor: ColorConstant.indigo100,
        onToggle: (value) {
          onChanged!(value);
        },
      ),
    );
  }
}
