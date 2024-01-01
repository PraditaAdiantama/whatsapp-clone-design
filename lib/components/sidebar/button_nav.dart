import 'package:flutter/material.dart';

class ButtonNav extends StatelessWidget {
  final IconData? icon;
  final Function? onTap;
  const ButtonNav({required this.onTap,required this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            const CircleBorder(),
          ),
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          shadowColor: MaterialStateProperty.all(Colors.transparent),
          overlayColor: MaterialStateProperty.all(Colors.transparent),
          surfaceTintColor: MaterialStateProperty.all(Colors.transparent),
        ),
        onPressed: () {},
        child: Icon(
          icon,
          color: Colors.black,
        ),
      ),
    );
  }
}
