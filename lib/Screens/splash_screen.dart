import 'dart:async';

import 'package:flutter/material.dart';
import 'package:post_request/Screens/onboard_page.dart';
import 'package:post_request/utils/widgets/ft.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key, required this.duration}) : super(key: key);

  final Duration duration;

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(vsync: this, duration: widget.duration);

    Timer(
        const Duration(seconds: 10),
        () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => const onboardPage())));
  }

  @override
  void didUpdateWidget(SplashScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    _controller.duration = widget.duration;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 54, 114, 244),
        body: Container(
            child: Stack(
          children: [
            SafeArea(
                child: Container(
              color: Colors.transparent,
              width: double.maxFinite,
              height: double.maxFinite,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [Logo(size: 100)],
                ),
              ),
            )),
          ],
        )));
  }
}
