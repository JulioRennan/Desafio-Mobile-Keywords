import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class FadeContainer extends StatefulWidget {
  final Duration delay;
  final Widget child;
  final double? width;
  final double? height;

  final Function()? onFade;
  final Clip clipBehavior;
  final Decoration? decoration;

  const FadeContainer({
    Key? key,
    required this.child,
    Duration? delay,
    this.clipBehavior = Clip.none,
    this.decoration,
    this.width,
    this.onFade,
    this.height,
  })  : delay = delay ?? const Duration(milliseconds: 100),
        super(key: key);

  @override
  State<FadeContainer> createState() => _FadeContainerState();
}

class _FadeContainerState extends State<FadeContainer> {
  double opacity = 0.0;
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance?.addPostFrameCallback((timeStamp) {
      Future.delayed(widget.delay).then((value) {
        if (mounted) setState(() => opacity = 1.0);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      clipBehavior: widget.clipBehavior,
      decoration: widget.decoration,
      alignment: Alignment.center,
      child: AnimatedOpacity(
        duration: const Duration(seconds: 1),
        child: widget.child,
        opacity: opacity,
        onEnd: widget.onFade,
      ),
    );
  }
}
