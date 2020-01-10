import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();

}

class HomePageState extends State<HomePage> {

  int _selectedIndex = 0;

  Widget getDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
                color: Colors.blue
            ),
            child: Text(
              "Hello Captain",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
              ),
            ),
          ),
          ListTile(
            leading: Image.asset(
              'assets/select-all.png',
              width: 30.0,
              height: 30.0,
            ),
            title: Text("All"),
          ),
          ListTile(
            leading: Image.asset(
              'assets/self-project.png',
              width: 30.0,
              height: 30.0,
            ),
            title: Text("Self Projects"),
          ),
          ListTile(
            leading: Image.asset(
              'assets/project.png',
              width: 30.0,
              height: 30.0,
            ),
            title: Text("Projects"),
          ),
          ListTile(
            leading: Image.asset(
              'assets/pen.png',
              width: 30.0,
              height: 30.0,
            ),
            title: Text("Writings"),
          ),
          ListTile(
            leading: Image.asset(
              'assets/course.png',
              width: 30.0,
              height: 30.0,
            ),
            title: Text("Courses"),
          ),
          ListTile(
            leading: Image.asset(
              'assets/book.png',
              width: 30.0,
              height: 30.0,
            ),
            title: Text("Books"),
          ),
          ListTile(
            leading: Image.asset(
              'assets/climbing.png',
              width: 30.0,
              height: 30.0,
            ),
            title: Text("Sports"),
          ),
          ListTile(
            leading: Image.asset(
              'assets/sleeping.png',
              width: 30.0,
              height: 30.0,
            ),
            title: Text("Sleep"),
          ),
          ListTile(
            leading: Image.asset(
              'assets/user.png',
              width: 30.0,
              height: 30.0,
            ),
            title: Text("User Details"),
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }

  Widget getBottomNav() {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Image.asset(
              'assets/view-all.png',
              width: 40.0,
              height: 40.0,
            ),
            title: Text("All")
        ),
        BottomNavigationBarItem(
            icon: Image.asset(
              'assets/working.png',
              width: 40.0,
              height: 40.0,
            ),
            title: Text("Working")
        ),
        BottomNavigationBarItem(
            icon: Image.asset(
              'assets/future.png',
              width: 40.0,
              height: 40.0,
            ),
            title: Text("Future")
        ),
        BottomNavigationBarItem(
            icon: Image.asset(
              'assets/cancel.png',
              width: 40.0,
              height: 40.0,
            ),
            title: Text("Cancelled")
        )
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      unselectedItemColor: Colors.grey,
      backgroundColor: Colors.green[100],
      onTap: _onIndexTapped,
      showUnselectedLabels: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Work Manager"),
      ),
      drawer: getDrawer(),
      body: Container(),
      bottomNavigationBar: getBottomNav(),
    );
  }

  _onIndexTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

}