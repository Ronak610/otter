import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  RxBool group = false.obs;
  RxBool direct = false.obs;
  RxBool folder = false.obs;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Home"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.toNamed('r');
          },
          child: Icon(Icons.mic_rounded),
        ),
        drawer: Drawer(
          backgroundColor: Color(0xff021852),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width - 150,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      style: BorderStyle.solid,
                      width: 3,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Icon(CupertinoIcons.home, color: Colors.white),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Icon(Icons.calendar_today_outlined, color: Colors.white),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "My Agenda",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Icon(Icons.sticky_note_2_outlined, color: Colors.white),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "My Conversations",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  width: 400,
                  child: ExpansionTile(
                    onExpansionChanged: (value) {
                      group.value = !group.value;
                    },
                    children: [Text("hyyy")],
                    leading: Obx(
                      () => Icon(
                          group.value == true
                              ? Icons.arrow_downward_outlined
                              : Icons.arrow_forward_ios_outlined,
                          color: Colors.white),
                    ),
                    title: Text(
                      "GROUPS",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Icon(Icons.add, color: Colors.white),
                  ),
                ),
                Container(
                  width: 400,
                  child: ExpansionTile(
                    onExpansionChanged: (value) {
                      direct.value = !direct.value;
                    },
                    children: [],
                    title: Text(
                      "DIRECT MESSAGES",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Icon(Icons.add, color: Colors.white),
                    leading: Obx(
                      () => Icon(
                          direct.value == true
                              ? Icons.arrow_downward_outlined
                              : Icons.arrow_forward_ios_outlined,
                          color: Colors.white),
                    ),
                    // leading: Icon(Icons.arrow_forward_ios_outlined),
                  ),
                ),
                Container(
                  width: 400,
                  child: ExpansionTile(
                    onExpansionChanged: (value) {
                      folder.value = !folder.value;
                    },
                    children: [],
                    title: Text(
                      "FOLDERS",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Icon(Icons.add, color: Colors.white),
                    leading: Obx(
                      () => Icon(
                          folder.value == true
                              ? Icons.arrow_downward_outlined
                              : Icons.arrow_forward_ios_outlined,
                          color: Colors.white),
                    ),
                    // leading: Icon(Icons.arrow_forward_ios_outlined),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Icon(CupertinoIcons.person_2_square_stack,
                        color: Colors.white),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Shared with Me",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Icon(Icons.file_copy_outlined, color: Colors.white),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "All Conversations",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Icon(CupertinoIcons.delete, color: Colors.white),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Trash",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
