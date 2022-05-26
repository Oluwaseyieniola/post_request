import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final double size;
  final bool useHero;
  final ratherIcon = Icons.generating_tokens;

  const Logo({
    Key? key,
    required this.size,
    this.useHero = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HeroMode(
      enabled: useHero,
      child: Hero(
        tag: 'trip',
        child: SizedBox(
          width: size,
          height: size,
          child: FittedBox(
            child: Container(
              padding: const EdgeInsets.all(13),
              decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.8), shape: BoxShape.circle),
              child: Container(
                padding: const EdgeInsets.all(30),
                child: Icon(
                  ratherIcon,
                  size: 120,
                  color: Colors.white,
                ),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 33, 87, 131),
                    shape: BoxShape.circle),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
