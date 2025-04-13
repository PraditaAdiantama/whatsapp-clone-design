import 'package:flutter/material.dart';

class HomeBadges extends StatelessWidget {
  const HomeBadges({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        top: 20,
        bottom: 10,
      ),
      child: Row(
        spacing: 5,
        children: [
          Badge(
            label: Text("All"),
            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 5),
            backgroundColor: Colors.greenAccent,
            textColor: Colors.black,
            textStyle: TextStyle(fontSize: 14),
          ),
          Badge(
            label: Text("Unread"),
            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 5),
            backgroundColor: Color.fromRGBO(245, 245, 243, 1),
            textColor: Colors.black,
            textStyle: TextStyle(fontSize: 14),
          ),
          Badge(
            label: Text("Groups"),
            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 5),
            backgroundColor: Color.fromRGBO(245, 245, 243, 1),
            textColor: Colors.black,
            textStyle: TextStyle(fontSize: 14),
          )
        ],
      ),
    );
  }
}
