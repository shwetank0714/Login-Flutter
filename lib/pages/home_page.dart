import 'package:first_app/pages/nextpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //myFunc({bool a = false, int k = 10}){

    return Scaffold(
      appBar: AppBar(
        title: const Text("First App"),
      ),
      body: Column(
        children: [
          Image.asset(
            "assets/login.png",
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Login Page",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: "Enter UserName",
                labelText: "USERNAME",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                hintText: "Enter Password",
                labelText: "PASSWORD",
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.deepOrange),
                onPressed: () {
                  print("Shwetank");
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Nav()));
                },
                child: const Text("Button"),
              ),
            ),
          ),
        ],
      ),
      drawer: const Drawer(),
    );
  }
}
