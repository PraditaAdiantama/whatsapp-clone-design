import 'package:flutter/material.dart';
import 'package:whatsapp_design/components/dropdown.dart';
import 'package:whatsapp_design/components/sidebar/button_nav.dart';
import 'package:whatsapp_design/components/sidebar/chat_list.dart';
import 'package:whatsapp_design/components/sidebar/search.dart';
import 'package:whatsapp_design/components/sidebar/user_profile.dart';

class SideBar extends StatefulWidget {
  final BoxConstraints constraints;
  const SideBar({required this.constraints, super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      height: widget.constraints.maxHeight,
      decoration: const BoxDecoration(
        border: Border(
          right: BorderSide(
            width: 0.1,
            color: Colors.black,
          ),
        ),
      ),
      child: Column(
        children: [
          Container(
            color: const Color(0xFFF0F2F5),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10.0
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const UserProfile(),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 20.0,
                    ),
                    child: Row(
                      children: [
                        ButtonNav(
                          onTap: () {},
                          icon: Icons.group_outlined,
                        ),
                        ButtonNav(
                          onTap: () {},
                          icon: Icons.circle_outlined,
                        ),
                        ButtonNav(
                          onTap: () {},
                          icon: Icons.chat_outlined,
                        ),
                        const MyDropDown()
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Search(),
          ChatList(
            constriants: widget.constraints,
          ),
        ],
      ),
    );
  }
}
