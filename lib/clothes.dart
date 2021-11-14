


import 'package:flutter/material.dart';

class clothes extends StatefulWidget {
  const clothes({ Key? key }) : super(key: key);

  @override
  _clothesState createState() => _clothesState();
}

class _clothesState extends State<clothes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Row(
          children: <Widget>[
            line("Shoes","pic.jpg","10 Pieces left"),
            line("Suit","suit1.jpg","5 Pieces left"),
            line("Shirts","shirt1.jpg","18 Pieces left"),
            line("T-Shirts","tshirt1.jpg","9 Pieces left"),
            line("Joggers","pic2.jpg","0 Pieces left"),
            line("Jeans","jeans1.jpg","3 Pieces left"),
            line("Track Suits","track1.jpg","22 Pieces left"),
          ],
        ),
      ),
    
    );
  }
}
Widget line(String name, String img, String subname) {
  return  Row(
      children: [
        Container(
           height: 5,
            width: 10,
            decoration: BoxDecoration(
               image: DecorationImage(image: AssetImage(img)), borderRadius: BorderRadius.circular(30), color: Colors.white10,),
            
        ),
        Column(
          children: [
            Text ("$name", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),),
          ],
        ),
        Column(
          children: [
            Text ("$subname", style: TextStyle(fontSize: 20, color: Colors.blueGrey),),
          ],
        ),
        SizedBox(width: 5.0,),
      ],
    
  );       
}

