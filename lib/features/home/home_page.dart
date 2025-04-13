import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Whatsapp",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.camera_alt_outlined),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.more_vert_outlined),
                    ),
                  ],
                ),
              ],
            ),
            const Padding(
              padding:  EdgeInsets.only(top:10),
              child:  TextField(
                decoration: InputDecoration(
                  hintText: "Ask Meta AI or Search",
                  prefixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: Color.fromRGBO(245, 245, 243, 1),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    ),
                  )
                ),
              ),
            ),
            const Padding(
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
                    textStyle: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  Badge(
                    label: Text("Unread"),
                    padding: EdgeInsets.symmetric(horizontal: 14, vertical: 5),
                    backgroundColor: Color.fromRGBO(245, 245, 243, 1),
                    textColor: Colors.black,
                    textStyle: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  Badge(
                    label: Text("Groups"),
                    padding: EdgeInsets.symmetric(horizontal: 14, vertical: 5),
                    backgroundColor: Color.fromRGBO(245, 245, 243, 1),
                    textColor: Colors.black,
                    textStyle: TextStyle(
                      fontSize: 14,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
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
            ),
          ],
        ),
      ),
    );
  }
}
