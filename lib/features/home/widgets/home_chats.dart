import 'package:flutter/material.dart';

class HomeChats extends StatelessWidget {
  const HomeChats({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                "https://bsmedia.business-standard.com/_media/bs/img/article/2024-05/10/full/1715318455-6991.png?im=FeatureCrop,size=(826,465)",
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
            title: Text("Sutelo $index"),
            subtitle: const Text("Hello"),
            trailing: const Column(
              spacing: 3,
              children: [
                Text("Tuesday"),
                Icon(
                  Icons.push_pin,
                  size: 16,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
