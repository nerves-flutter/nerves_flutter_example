import 'package:flutter/material.dart';
import 'package:flutter_app/fade_in.dart';
import 'package:flutter_app/nerves_logo.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class IntroScreen extends HookWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final continueButton = ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushNamed("/list");
        },
        child: Text("Start Demo", style: theme.textTheme.titleLarge));

    const nervesLogoWrapped =
        FadeIn(duration: 1500, startDelay: 10000, child: NervesLogo());
    final continueButtonWrapped =
        FadeIn(duration: 1500, startDelay: 12000, child: continueButton);

    return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                nervesLogoWrapped,
              ]),
          Padding(
              padding: const EdgeInsets.only(top: 64),
              child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [continueButtonWrapped]))
        ]);
  }
}
