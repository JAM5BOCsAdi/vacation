import 'package:flutter/material.dart';

@immutable
class BaseStatelessWidget extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final bool? safeAreaTop;
  final bool? safeAreaBottom;
  final bool? safeAreaLeft;
  final bool? safeAreaRight;
  final Color? color;
  final double? height;
  final double? width;
  final ScrollPhysics? physics;
  final Widget child;

  const BaseStatelessWidget({
    super.key,
    this.appBar,
    this.safeAreaTop,
    this.safeAreaBottom,
    this.safeAreaLeft,
    this.safeAreaRight,
    this.color,
    this.height,
    this.width,
    this.physics,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar ??
          AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            centerTitle: true,
            title: const Text('MyApp'),
          ),
      body: SafeArea(
        top: safeAreaTop ?? true,
        bottom: safeAreaBottom ?? true,
        left: safeAreaLeft ?? true,
        right: safeAreaRight ?? true,
        child: Container(
          color: color ?? Theme.of(context).colorScheme.onPrimary,
          height: height ?? MediaQuery.of(context).size.height,
          width: width ?? MediaQuery.of(context).size.width,
          child: Scrollbar(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: physics ?? const AlwaysScrollableScrollPhysics(),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
