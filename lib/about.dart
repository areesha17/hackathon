import 'package:flutter/material.dart';
import 'package:minihackathon/homepage.dart';

class about extends StatefulWidget {
  const about({ Key? key }) : super(key: key);

  @override
  _aboutState createState() => _aboutState();
}

class _aboutState extends State<about> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: Text("About",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.white)),
        backgroundColor: Colors.orange,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) =>homepage()));
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 40,
          ),
        ),
        actions: [
          Icon(
            Icons.info,
            color: Colors.white,
            size: 40,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(children: [
              Image.network(
                  "https://tse1.mm.bing.net/th?id=OIP.-seJcf-kT5yTYUmPAfW_vwHaHb&pid=Api&rs=1&c=1&qlt=95&w=114&h=114"),
              Divider(),
              Text(
                "Drop line about us",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.orange),
              ),
              Divider(),
              Icon(
                Icons.more_horiz,
                size: 20,
                color: Colors.orange,
              ),
              Divider(),
              Icon(
                Icons.location_disabled,
                size: 20,
                color: Colors.red,
              ),
              Text(
                "267 Jullain Moterway,Lalukheat, Karachi",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
              Divider(),
              Text(
                "OPEN MAP",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.blue),
              ),
              Icon(
                Icons.mobile_friendly,
                size: 25,
                color: Colors.red,
              ),
              Text(
                "0900-78601",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
              Divider(),
              Icon(
                Icons.watch,
                size: 25,
                color: Colors.red,
              ),
              Text(
                "Monday-Friday",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
              Text(
                "09:00-17:00",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}