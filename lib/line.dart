/*
 * @Author: lipeng 1162423147@qq.com
 * @Date: 2022-04-29 17:06:50
 * @LastEditors: lipeng 1162423147@qq.com
 * @LastEditTime: 2023-09-21 20:18:44
 * @FilePath: /phoenix_line/lib/brn_line.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';
import 'package:phoenix_base/phoenix.dart';

/// 用于分割页面组件元素的横向分割线
/// 支持自定义颜色、左右间距、和高度
///
/// 系统提供的[Divider]组件，当设置的高度过大时，会出现中间一条线，
///
/// ```dart
///   BrnLine()
///
///   BrnLine(
///      leftInset: 20,
///   )
///
/// ```
///
/// 相关分割线如下:
///
class Line extends StatelessWidget {
  /// 分割线的或者分割条的颜色 可以通过[BrnThemeConfigurator]配置默认颜色
  final Color? color;

  /// 分割线的或者分割条的高度 默认0.5
  final double height;

  /// 左边缩进距离
  final double leftInset;

  /// 右边缩进距离
  final double rightInset;

  Line({
    Key? key,
    this.color,
    this.height = 0.5,
    this.leftInset = 0,
    this.rightInset = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: this.leftInset, right: this.rightInset),
      child: Divider(
        thickness: this.height,
        height: this.height,
        color: this.color ??
            BaseThemeConfig.instance.getConfig().commonConfig.dividerColorBase,
      ),
    );
  }
}
