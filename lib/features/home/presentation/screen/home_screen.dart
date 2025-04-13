import 'package:flutter/material.dart';
import 'package:whatsapp_design/features/home/widgets/home_badges.dart';
import 'package:whatsapp_design/features/home/widgets/home_chats.dart';
import 'package:whatsapp_design/features/home/widgets/home_search.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context){
    return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            HomeSearch(),
            HomeBadges(),
            HomeChats(),
          ],
        ),
      );
  }
}