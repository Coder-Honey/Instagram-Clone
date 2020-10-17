import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:instagram/feed.dart';
import 'package:instagram/post.dart';
import 'package:instagram/story.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _pages = [
    Feed(),
    Feed(),
    Feed(),
    Feed(),
    Feed(),
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF000000),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF000000),
        brightness: Brightness.dark,
        centerTitle: true,
        title: Text(
          "Instagram",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Billabong',
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Feather.camera,
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Feather.search,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesome.send_o,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: _pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (i) {
          setState(() {
            currentPage = i;
          });
        },
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        backgroundColor: Color(0xFF000000),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Foundation.home), title: Text("Feed")),
          BottomNavigationBarItem(
              icon: Icon(Feather.search), title: Text("Search")),
          BottomNavigationBarItem(
              icon: Icon(Feather.plus_square), title: Text("Upload")),
          BottomNavigationBarItem(
              icon: Icon(Feather.heart), title: Text("Likes")),
          BottomNavigationBarItem(
              icon: Icon(Feather.user), title: Text("Account")),
        ],
      ),
    );
  }
}
