import 'dart:ui';

import 'package:aula02/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required String title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Home',
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Icon(
                Icons.notifications,
              ),
            ),
          ]),
      drawer: const Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blueAccent,
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            selectedColor: Colors.purple,
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: Icon(Icons.favorite_border),
            title: Text("Likes"),
            selectedColor: Colors.pink,
          ),

          /// Search
          SalomonBottomBarItem(
            icon: Icon(Icons.search),
            title: Text("Search"),
            selectedColor: Colors.orange,
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
            selectedColor: Colors.teal,
          ),
        ],
      ),
      body: Card(
        child: ListView(
          children: [
            Card(
              color: Color(0xffe5effa),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blueAccent,
                  child: Text('A'),
                ),
                title: Text('Car'),
                subtitle: Text("Subtitle"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Card(
              color: Color(0xffe5effa),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blueAccent,
                  child: Text('A'),
                ),
                title: Text('Car'),
                subtitle: Text("Subtitle"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Card(
              color: Color(0xffe5effa),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blueAccent,
                  child: Text('A'),
                ),
                title: Text('Car'),
                subtitle: Text("Subtitle"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Card(
              color: Color(0xffe5effa),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blueAccent,
                  child: Text('A'),
                ),
                title: Text('Car'),
                subtitle: Text("Subtitle"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
