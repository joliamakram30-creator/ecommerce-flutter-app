import 'dart:developer';

import 'package:flutter/material.dart';

class kiki extends StatelessWidget {
  const kiki({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 30,
        title: Text('hhhhhh'),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.menu), iconSize: 54),
        ],
      ),
      body: const Center(
        child: Text(
          "hello",
          style: TextStyle(
            fontSize: 30,
            color: Color.fromARGB(255, 188, 151, 20),
          ),
        ),
      ),
    );
  }
}
