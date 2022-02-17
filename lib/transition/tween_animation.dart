import 'package:flutter/material.dart';

class TweenAnimation extends StatefulWidget {
  Widget? w;
  TweenAnimation({this.w});

  @override
  _TweenAnimationState createState() => _TweenAnimationState();
}

class _TweenAnimationState extends State<TweenAnimation>
    with SingleTickerProviderStateMixin {
  Animation<Offset>? _animation;
  AnimationController? _controller;
  CurvedAnimation? _curvedAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));

    _curvedAnimation = CurvedAnimation(
        parent: _controller!, curve: Curves.fastLinearToSlowEaseIn);
    _animation = Tween<Offset>(begin: Offset(0, 1), end: Offset.zero)
        .animate(_curvedAnimation!);
    _controller!.forward();
    _controller!.addListener(() {});
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller!,
      builder: (BuildContext context, Widget? child) {
        return SlideTransition(child: widget.w, position: _animation!);
      },
    );
  }

  delayed() async {
    await Future.delayed(Duration(milliseconds: 200));
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }
}
