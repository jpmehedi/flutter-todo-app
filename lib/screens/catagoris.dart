import 'package:flutter/material.dart';
import 'package:todo/screens/home_screen.dart';

class Catagoris extends StatefulWidget {
  @override
  _CatagorisState createState() => _CatagorisState();
}

_showFormDialog(BuildContext contex) {
  return showDialog(
      context: contex,
      builder: (context) {
        return AlertDialog(
          title: Text("Catagorys"),
          content: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                      labelText: "Catagory Name",
                      hintText: "Write Catagory Name"),
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: "Catagory Descriptions",
                      hintText: "Write Catagory Descriptions"),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            RaisedButton(
              color: Colors.red,
              onPressed: () {},
              child: Text("Cencel"),
            ),
            SizedBox(
              width: 10,
            ),
            RaisedButton(
              color: Colors.red,
              onPressed: () {},
              child: Text("Save"),
            )
          ],
        );
      });
}

class _CatagorisState extends State<Catagoris> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: RaisedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
          elevation: 0.0,
          color: Colors.red,
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Text("TODO"),
      ),
      body: Container(
        child: Center(
          child: Text("helo"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showFormDialog(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
