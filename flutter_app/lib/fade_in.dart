import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class FadeIn extends HookWidget {
  final Widget child;
  final int startDelay;
  final int duration;

  const FadeIn({
    super.key,
    required this.child,
    required this.duration,
    this.startDelay = 0,
  });

  @override
  Widget build(BuildContext context) {
    final animationController = useAnimationController(
      duration: Duration(milliseconds: duration),
    );

    useEffect(() {
      Future.delayed(Duration(milliseconds: startDelay), () {
        animationController.forward();
      });

      return null;
    }, [startDelay]);

    final opacity = useAnimation(CurvedAnimation(
      parent: animationController,
      curve: Curves.easeInOutCubic,
    ));

    final scale = useAnimation(Tween<double>(
      begin: 1.45,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.easeInOutCubic,
    )));

    return Opacity(
      opacity: opacity,
      child: Transform.scale(
        scale: scale,
        child: child,
      ),
    );
  }
}
