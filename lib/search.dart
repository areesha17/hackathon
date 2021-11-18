import 'package:flutter/material.dart';

class search extends StatefulWidget {
  const search({ Key? key }) : super(key: key);

  @override
  _searchState createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListTile(
        leading: Icon(Icons.clear, color: Colors.grey),
        title: Text("Search by name or address"),
        trailing: Icon(Icons.search, color: Colors.grey),
      ), 
      
    );
  }
}