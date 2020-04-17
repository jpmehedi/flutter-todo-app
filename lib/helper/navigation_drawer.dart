import 'package:flutter/material.dart';
import 'package:todo/screens/catagoris.dart';
import 'package:todo/screens/home_screen.dart';

class NavigationDrawer extends StatefulWidget {
  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
          child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Mr. Mehedi"),
            accountEmail: Text("mehedihasan.cse.jp@gmail.com"),
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                backgroundColor: Colors.redAccent,
                child: Icon(Icons.account_circle),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blueGrey,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return HomePage();
              }));
            },
            title: Text("Home"),
            leading: Icon(Icons.home),
            trailing: Icon(Icons.navigate_next),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Catagoris();
              }));
            },
            title: Text("Catagoris"),
            leading: Icon(Icons.category),
            trailing: Icon(Icons.navigate_next),
          ),
        ],
      )),
    );
  }
}
