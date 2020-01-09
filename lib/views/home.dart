import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();

}

class HomePageState extends State<HomePage> {

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Work Manager"),
      ),
      drawer: Drawer(
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
              leading: Icon(Icons.all_inclusive),
              title: Text("All"),
            ),
            ListTile(
              leading: Icon(Icons.group_work),
              title: Text("Projects"),
            ),
            ListTile(
              leading: Icon(Icons.class_),
              title: Text("Classes"),
            ),
            ListTile(
              leading: Icon(Icons.library_books),
              title: Text("Books"),
            ),
            ListTile(
              leading: Icon(Icons.games),
              title: Text("Sports"),
            ),
            ListTile(
              leading: Icon(Icons.keyboard),
              title: Text("Writings"),
            ),
            ListTile(
              leading: Icon(Icons.stop),
              title: Text("Sleep"),
            ),
            ListTile(
              leading: Icon(Icons.schedule),
              title: Text("Self Projects"),
            ),
            ListTile(
              leading: Icon(Icons.details),
              title: Text("User Details"),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.all_inclusive),
            title: Text("All")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group_work),
            title: Text("Working")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.hourglass_full),
            title: Text("Future")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cancel),
            title: Text("Cancelled")
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.blue,
        onTap: _onIndexTapped,
      ),
    );
  }

  _onIndexTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

}