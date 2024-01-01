import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.1),
        ),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 10,
                bottom: 10,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: const Color(0xFFF0F2F5),
              ),
              width: 310,
              height: 35,
              child: const TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(bottom: 20.0),
                  prefixIcon: Icon(Icons.search, size: 20),
                  hintText: 'Search or start new chat',
                  hintStyle: TextStyle(fontSize: 14.0),
                  border: InputBorder.none,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                print('clicked');
              },
              child: const Icon(Icons.sort),
            )
          ],
        ),
      ),
    );
  }
}
