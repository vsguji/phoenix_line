/*
 * @Author: lipeng 1162423147@qq.com
 * @Date: 2022-04-29 17:06:50
 * @LastEditors: lipeng 1162423147@qq.com
 * @LastEditTime: 2023-10-12 09:21:57
 * @FilePath: /phoenix_line/example/lib/dashed_line_example.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';
import 'package:phoenix_line/phoenix_line.dart';

class DashedLineExample extends StatefulWidget {
  @override
  _DashedLineExampleState createState() => _DashedLineExampleState();
}

class _DashedLineExampleState extends State<DashedLineExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('虚线分割线'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              '分割线的空间是由内部内容撑开',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 18,
              ),
            ),
            // 分割线的空间是由内部内容撑开
            DashedLine(
              dashedLength: 20,
              dashedThickness: 5,
              axis: Axis.vertical,
              color: Colors.red,
              dashedOffset: 20,
              position: DashedLinePosition.leading,
              contentWidget: Container(
                margin: const EdgeInsets.only(
                    left: 60, right: 20, top: 10, bottom: 10),
                child: const Text(
                    "穿插介绍、公司模式一句话C端服务承诺介绍、价值穿插介绍、公司模式一句话C端服务承诺介绍、价值穿插介绍、公司模式一句话C端服务承诺介绍、价值"),
              ),
            ),
            const Text(
              '分割线的空间是由内部容器设定',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 18,
              ),
            ),
            // 分割线的空间是由内部容器设定
            DashedLine(
              dashedLength: 10,
              dashedThickness: 3,
              axis: Axis.horizontal,
              color: Colors.green,
              dashedOffset: 20,
              position: DashedLinePosition.leading,
              contentWidget: Container(
                width: 200,
                height: 100,
              ),
            ),
            const Text(
              '分割线的空间由外部设定',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 18,
              ),
            ),
            // 分割线的空间由外部设定
            Container(
              height: 50,
              width: 300,
              padding: const EdgeInsets.all(5),
              color: Colors.red,
              child: DashedLine(
                axis: Axis.horizontal,
                dashedOffset: 10,
                contentWidget: Container(
                  width: 200,
                  height: 100,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
