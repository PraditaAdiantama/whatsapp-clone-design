import 'package:flutter/material.dart';
import 'package:whatsapp_design/components/home/main.dart';
import 'package:whatsapp_design/components/side_bar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Row(
          children: [
            SideBar(
              constraints: constraints,
            ),
            HomeMain(
              constraints: constraints,
            )
          ],
        );
      },
    );
  }
}
