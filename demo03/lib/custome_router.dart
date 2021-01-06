import 'package:flutter/material.dart';

class CustomeRoute extends PageRouteBuilder {
  final Widget widget;
  CustomeRoute(this.widget)
      : super(
            transitionDuration: Duration(seconds: 1),
            pageBuilder: (BuildContext context, Animation<double> animation1,
                Animation<double> animation2) {
              return widget;
            },
            transitionsBuilder: (BuildContext context,
                Animation<double> animation1,
                Animation<double> animation2,
                Widget child) {
              //渐隐渐现切换动画
              // return FadeTransition(
              //   opacity: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
              //       parent: animation1,
              //       curve: Curves.fastOutSlowIn)), //控制过度动画类型
              //   child: child,
              // );
              //缩放切换
              // return ScaleTransition(
              //   scale: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
              //       parent: animation1, curve: Curves.fastOutSlowIn)),
              //   child: child,
              // );
              //旋转加缩放切换
              // return RotationTransition(
              //   turns: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
              //       parent: animation1, curve: Curves.fastOutSlowIn)),
              //   child: ScaleTransition(
              //     scale: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
              //         parent: animation1, curve: Curves.fastOutSlowIn)),
              //     child: child,
              //   ),
              // );
              //平滑切换
              return SlideTransition(
                position: Tween<Offset>(
                        begin: Offset(-1.0, 1.0), end: Offset(0.0, 0.0))
                    .animate(CurvedAnimation(
                        parent: animation1, curve: Curves.fastOutSlowIn)),
                child: child,
              );
            });
}
