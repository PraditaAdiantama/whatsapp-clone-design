import 'package:flutter/material.dart';
import 'package:whatsapp_design/components/sidebar/button_nav.dart';
import 'package:whatsapp_design/components/sidebar/user_profile.dart';

class HomeHeader extends StatelessWidget {
  final BoxConstraints constraints;
  const HomeHeader({super.key, required this.constraints});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 10.0,
        bottom: 10.0,
        right: 20.0,
      ),
      width: constraints.maxWidth - 370,
      decoration: const BoxDecoration(
        color: Color(0xFFF0F2F5),
        border: Border(
          left: BorderSide(width: 0.1),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [UserProfile(), Text('Lyod')],
          ),
          Row(
            children: [
              OutlinedButton(
                style: ButtonStyle(
                  iconColor: MaterialStateProperty.all(Colors.grey),
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(horizontal: 10.0),
                  ),
                ),
                onPressed: () {},
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.video_call),
                    Icon(Icons.keyboard_arrow_down),
                  ],
                ),
              ),
              ButtonNav(
                icon: Icons.search,
                onTap: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
