import 'package:flutter/material.dart';
import 'flutter_community.dart';

class CommunitiesScreen extends StatelessWidget {
  const CommunitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Communities",
          // textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.normal,
          ),
        ),
        actions: const [
          Icon(
            Icons.camera_alt_outlined,
            color: Colors.black,
          ),
          SizedBox(
            width: 15,
          ),
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
            leading: Stack(
              children: [
                Container(
                  width: 42,
                  height: 42,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 204, 204, 204),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.people,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green,
                      border: Border.all(
                        color: Colors.white,
                        width: 1.2,
                      ),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ),
              ],
            ),
            title: const Text(
              "New Community",
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 7,
            child: ColoredBox(
              color: Color.fromARGB(255, 231, 231, 231),
            ),
          ),
          ListTile(
            leading: Container(
              width: 42,
              height: 42,
              decoration: const BoxDecoration(
                color: Colors.red,
                // borderRadius: BorderRadius.circular(12),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.code,
                color: Colors.white,
                size: 30,
              ),
            ),
            title: const Text(
              "#CaParleDev",
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
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
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 199, 255, 188),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(
                Icons.record_voice_over,
                color: Color.fromARGB(255, 7, 65, 37),
                size: 25,
              ),
            ),
            title: const Text(
              "Announcements",
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: const Text(
              'Group "Lddvhbd" was added',
            ),
            trailing: const Text(
              "2024-03-06",
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
              'Flutter message flutter',
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
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: ListTile(
              leading: const Icon(
                Icons.keyboard_arrow_right,
              ),
              title: const Padding(
                padding: EdgeInsets.only(
                  left: 6,
                ),
                child: Text(
                  "View all",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => FlutterCommunity(),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 7,
            child: ColoredBox(
              color: Color.fromARGB(255, 231, 231, 231),
            ),
          ),
        ],
      ),
    );
  }
}
