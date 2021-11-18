import 'package:flutter/material.dart';
import 'package:minihackathon/homepage.dart';

class profile extends StatefulWidget {
  const profile({ Key? key }) : super(key: key);

  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.orange),
          onPressed: (){
            Navigator.of(context).pop(MaterialPageRoute(builder: (context) => homepage()));
          },
        ),
      ),
      
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 10,),
            child: ListTile(
              leading: Center(child: CircleAvatar(radius: 90, backgroundColor: Colors.blue,)),
              title: Center(child: Text("Areesha Zafar")),
            )
          ),
          ListTile(
            title: Text("Email",style: TextStyle(color: Colors.orange, fontSize: 20),),
            subtitle: Text("areeshazafar5@gmail.com"),
          ),
          SizedBox(height: 10,),

           ListTile(
            title: Text("Phone Number",style: TextStyle(color: Colors.orange, fontSize: 20),),
            subtitle: Text("03170245580"),
          ),
          SizedBox(height: 10,),

           ListTile(
            title: Text("Bate Of Birth",style: TextStyle(color: Colors.orange, fontSize: 20),),
            subtitle: Text("2-09-2002"),
          ),
          SizedBox(height: 10,),

           ListTile(
            title: Text("City",style: TextStyle(color: Colors.orange, fontSize: 20),),
            subtitle: Text("Karachi"),
          ),
          SizedBox(height: 10,),
        ],
      ),
      
    );
  }
}