import 'package:flutter/material.dart';

class containers extends StatefulWidget {
  const containers({ Key? key }) : super(key: key);

  @override
  _containersState createState() => _containersState();
}

class _containersState extends State<containers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            doing("Black T-Shirt", "tshirt.jpg",50),
            doing("Blue Jeans", "jeans1.jpg",100),
            doing("Joggers", "pic3.jpg",150),
            doing("Caro Pants", "cargo1.jpg",250),
            doing("Formal Shirt", "shirt2.jpg",400),
          ],
        ),
      ),
    );
  }
}

Widget doing(String name, String img, int num){
  return ListTile(
    title: Column(
      children: [
      Container(
           height: 70,
            width: 50,
            decoration: BoxDecoration(
               image: DecorationImage(image: AssetImage(img)), borderRadius: BorderRadius.circular(50), color: Colors.white10,),
            
        ),
        Positioned(
          right: 10,
          top: -10,
          child: Container(
            height: 3,
            width: 8,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(70),color: Colors.orange, ),
            child: Text("30% off"),
          ),
          ),
        
        
         Row(
          children: [
            Text ("$name", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
          ],
        ),
        Row(
          children: [
            Text ("$num", style: TextStyle(fontSize: 20, color: Colors.black),),
          ],
        ),
      ],
    ),
  );
  }