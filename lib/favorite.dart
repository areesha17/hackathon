import 'package:flutter/material.dart';
import 'package:minihackathon/homepage.dart';


class favorite extends StatefulWidget {
  const favorite({ Key? key }) : super(key: key);

  @override
  _favoriteState createState() => _favoriteState();
}

class _favoriteState extends State<favorite> {
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
        title: Text("Favourite", style: TextStyle(color: Colors.black, fontSize: 22, ),),
        backgroundColor: Colors.white,
        actions: [Icon(Icons.favorite, color: Colors.orange,)],
      ),
    );
  }
}