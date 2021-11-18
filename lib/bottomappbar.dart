import 'package:flutter/material.dart';
import 'package:minihackathon/homepage.dart';
import 'package:minihackathon/profile.dart';
import 'package:minihackathon/search.dart';

class bottomappbar extends StatefulWidget {
  const bottomappbar({ Key? key }) : super(key: key);

  @override
  _bottomappbarState createState() => _bottomappbarState();
}

class _bottomappbarState extends State<bottomappbar> {

  var _data = [homepage(), search(), profile()];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _data[_currentIndex]),
     bottomNavigationBar: BottomNavigationBar(
       currentIndex: _currentIndex,
       type: BottomNavigationBarType.fixed, fixedColor: Colors.orange,
       items: [
         BottomNavigationBarItem(
      
           icon: Icon(Icons.home),
           title: Text("Home"),
        ),
         BottomNavigationBarItem(
           icon: Icon(Icons.search),
           title: Text("Search"),
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.person),
           title: Text("Profile"),
         ),
       
       ],
       onTap: (index){
         setState(() {
           _currentIndex = index;
         });
       },
    ),
      
    );
  }
}