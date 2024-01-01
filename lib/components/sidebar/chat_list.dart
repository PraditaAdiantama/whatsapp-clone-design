import 'package:flutter/material.dart';

class ChatList extends StatefulWidget {
  final BoxConstraints constriants;
  const ChatList({required this.constriants, super.key});

  @override
  State<ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.constriants.maxWidth - 740,
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return HoverContainer(
            index: index,
            key: widget.key,
          );
        },
      ),
    );
  }
}

class HoverContainer extends StatefulWidget {
  final int index;
  const HoverContainer({required this.index, super.key});

  @override
  State<HoverContainer> createState() => _HoverContainerState();
}

class _HoverContainerState extends State<HoverContainer> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (poiter) {
        setState(() {
          isHover = !isHover;
        });
      },
      onExit: (pointer) {
        setState(() {
          isHover = !isHover;
        });
      },
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 0.1,
            ),
          ),
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 15.0,
          ),
          tileColor: isHover ? Colors.white.withOpacity(0.2) : Colors.white,
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text('Yesterday'),
              GestureDetector(
                key: widget.key,
                child: AnimatedContainer(
                  transform: Matrix4.translationValues(
                    isHover ? 0 : 100,
                    0,
                    0,
                  ),
                  duration: const Duration(milliseconds: 300),
                  child: const Icon(Icons.keyboard_arrow_down),
                ),
              )
            ],
          ),
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.network(
                'https://media-cgk1-3.cdn.whatsapp.net/v/t61.24694-24/342591747_182038261391167_1654229996416447677_n.jpg?stp=dst-jpg_s96x96&ccb=11-4&oh=01_AdSAd8iq1mOnToJAb6VhzVmXrtpW5J_awSXtdJPDVbRbkA&oe=659D1E91&_nc_sid=e6ed6c&_nc_cat=109'),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.index.toString(),
              ),
              const Text(
                'Me: your mom',
                style: TextStyle(fontSize: 13.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
