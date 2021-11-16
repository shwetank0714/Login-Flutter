import 'package:flutter/material.dart';

class Nav extends StatelessWidget {
  const Nav({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigate"),
      ),
      body: Column(
        children: [
          // ignore: avoid_unnecessary_containers
          Container(
            child: ElevatedButton(child: const Text("Click Here"),onPressed:(){
            } ,),
          )
        ],
      ),
    );
  }
}