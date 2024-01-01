import 'package:flutter/material.dart';
import 'package:whatsapp_design/components/home/header.dart';

class HomeMain extends StatelessWidget {
  final BoxConstraints constraints;
  const HomeMain({required this.constraints, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeHeader(
          constraints: constraints,
        ),
      ],
    );
  }
}
