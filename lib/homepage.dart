import 'package:flutter/material.dart';
import 'package:flutter_ui/containers.dart';
import 'package:flutter_ui/uppercontainer.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, });
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( centerTitle: true,
        title: const Text("Leaderboard"),
        backgroundColor: Colors.black,
      ),
      body: 
      Column(
      children: [
        Expanded(
      flex: 1,
      child: Container(
        child: upperContainer(),
      ),
        ),
        Expanded(
      flex: 1,
      child: Container(
        color: Colors.black,
        child:  Center(
          child: SingleChildScrollView(
            child: Column(
              children: generateContainerList(),
            ),
          ),
        ),
      ),
        ),
      ],
      )

      );
  }
}
