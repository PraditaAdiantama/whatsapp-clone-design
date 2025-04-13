import 'package:flutter/material.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 10),
      child: TextField(
        decoration: InputDecoration(
            hintText: "Ask Meta AI or Search",
            prefixIcon: Icon(Icons.search),
            filled: true,
            fillColor: Color.fromRGBO(245, 245, 243, 1),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              borderSide: BorderSide(color: Colors.transparent),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              borderSide: BorderSide(color: Colors.transparent),
            )),
      ),
    );
  }
}
