import 'dart:ui';

import 'package:aula02/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required String title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(backgroundColor: Colors.blue, icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(backgroundColor: Colors.blue, icon: Icon(Icons.home), label: 'Home' ),
        BottomNavigationBarItem(backgroundColor: Colors.blue,icon: Icon(Icons.home), label: 'Home' ),
        BottomNavigationBarItem(backgroundColor: Colors.blue,icon: Icon(Icons.home), label: 'Home' ),
      ],currentIndex: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Bem-vindo usuário',
            style: TextStyle(fontSize: 22),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Clique aqui para sair ...',
                style: TextStyle(fontSize: 16),
              ),
              IconButton(
                icon: Icon(
                  Icons.logout,
                  color: Colors.blueAccent,
                ),
                onPressed: (() {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) =>
                          const LoginPage(title: 'Login Page'))));
                }),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
