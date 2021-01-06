import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:flutter/rendering.dart';

class FrostedClassDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: <Widget>[
            ConstrainedBox(
              constraints: const BoxConstraints.expand(),
              child: Image.network(
                  'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fa4.att.hudong.com%2F27%2F67%2F01300000921826141299672233506.jpg&refer=http%3A%2F%2Fa4.att.hudong.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1612494570&t=03fb69ddf2f71a0803f2d2c44b8094fb'),
            ), //约束盒子，添加额外的约束条件
            Center(
              child: ClipRect(
                //可裁切的矩形
                child: BackdropFilter(
                  //背景过滤器
                  filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                  child: Opacity(
                    opacity: 0.5,
                    child: Container(
                      width: 1000,
                      height: 700,
                      decoration:
                          BoxDecoration(color: Colors.grey.shade200), //盒子修饰器
                      child: Center(
                          child: Text(
                        '模糊',
                        style: Theme.of(context).textTheme.display3,
                      )),
                    ),
                  ),
                ),
              ),
            )
          ],
        ), //重叠组件
      ),
    );
  }
}
