import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          const CircleBorder(),
        ),
      ),
      onPressed: () {},
      child: ClipRRect(
        borderRadius: BorderRadius.circular(120),
        child: Image.network(
          width: 40,
          height: 40,
          'https://media-cgk1-3.cdn.whatsapp.net/v/t61.24694-24/342591747_182038261391167_1654229996416447677_n.jpg?stp=dst-jpg_s96x96&ccb=11-4&oh=01_AdSAd8iq1mOnToJAb6VhzVmXrtpW5J_awSXtdJPDVbRbkA&oe=659D1E91&_nc_sid=e6ed6c&_nc_cat=109',
        ),
      ),
    );
  }
}
