import 'package:flutter/material.dart';

class FlutterCommunity extends StatelessWidget {
  const FlutterCommunity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(
            Icons.more_vert,
            color: Colors.black,
          ),
          SizedBox(
            width: 5,
          ),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                color: Colors.red,
                // borderRadius: BorderRadius.circular(12),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.code,
                color: Colors.white,
                size: 35,
              ),
            ),
            title: const Text(
              "#CaParleDev",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 22,
              ),
            ),
            subtitle: const Text(
              "Community - 2 groups",
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 0.2,
                style: BorderStyle.solid,
                color: Color.fromARGB(255, 204, 204, 204),
              ),
            ),
          ),
          ListTile(
            leading: Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 199, 255, 188),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(
                Icons.record_voice_over,
                color: Color.fromARGB(255, 7, 65, 37),
                size: 30,
              ),
            ),
            title: const Text(
              "Announcements",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            subtitle: const Text(
              'Group "Lddvhbd" was added',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            trailing: const Text(
              "2024-03-06",
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 0.2,
                style: BorderStyle.solid,
                color: Color.fromARGB(255, 204, 204, 204),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 19,
              vertical: 10,
            ),
            child: Row(
              children: [
                Text(
                  "Groups you're in",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Container(
              width: 42,
              height: 42,
              decoration: const BoxDecoration(
                color: Colors.white,
                // borderRadius: BorderRadius.circular(12),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.flutter_dash_rounded,
                color: Color.fromARGB(255, 7, 65, 37),
                size: 30,
              ),
            ),
            title: const Text(
              "Flutter & Dart Community💙",
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: const Text(
              'Message flutter message',
            ),
            trailing: const Padding(
              padding: const EdgeInsets.only(
                top: 9,
              ),
              child: Column(
                children: [
                  Text(
                    "12:34 am",
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Icon(
                    Icons.notifications_active,
                    size: 20,
                    color: Color.fromARGB(255, 147, 147, 147),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
        child: ElevatedButton.icon(
          onPressed: () {},
          label: const Text(
            "Add group",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          icon: const Icon(
            Icons.add,
            color: Colors.white,
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
          ),
        ),
      ),
    );
  }
}
