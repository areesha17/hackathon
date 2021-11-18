import 'package:flutter/material.dart';
import 'package:minihackathon/homepage.dart';

class cart extends StatefulWidget {
  const cart({ Key? key }) : super(key: key);

  @override
  _cartState createState() => _cartState();
}

class _cartState extends State<cart> {
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
        title: Text("Cart", style: TextStyle(color: Colors.black, fontSize: 22, ),),
        backgroundColor: Colors.white,
        actions: [Icon(Icons.shopping_cart_outlined, color: Colors.orange,)],
      ),
    );
  }
}