import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';

class NervesLogo extends HookWidget {
  final double height;
  const NervesLogo({super.key, this.height = 128});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final isDarkMode = theme.brightness == Brightness.dark;

    final nervesLogo = SvgPicture.asset(
        isDarkMode ? "images/logo_white.svg" : "images/logo.svg",
        semanticsLabel: 'Nerves Logo',
        height: height);

    return nervesLogo;
  }
}
