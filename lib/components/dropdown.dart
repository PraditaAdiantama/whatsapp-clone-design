import 'package:flutter/material.dart';

class MyDropDown extends StatefulWidget {
  const MyDropDown({super.key});

  @override
  State<MyDropDown> createState() => _MyDropDownState();
}

class _MyDropDownState extends State<MyDropDown> {
  List dropdowns = ['Add new group'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10.0,
      ),
      child: PopupMenuButton(
        position: PopupMenuPosition.under,
        surfaceTintColor: Colors.white,
        color: Colors.white,
        itemBuilder: (BuildContext context) => <PopupMenuItem>[
          const PopupMenuItem(
            child: Text('New group'),
          ),
        ],
      ),
    );
  }
}
