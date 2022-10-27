import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomeView"),
        centerTitle: true,
      ),
      body: ListView(children: [
        SizedBox(
          height: 30,
        ),
        Center(
            child: Text(
          "Index",
          style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
        )),
        ListTile(
          title: Text("Contact 1"),
          subtitle: Text("897652542"),
          leading: Icon(Icons.contact_page),
        ),
        Divider(),
       ListTile(
        title: Text("Contact 2"),
        subtitle: Text("4353234334"),
//leading: CircleAvatar(backgroundImage:NetworkImage("fluttertoast: ")),
       )
      ]),
    );
  }
}
