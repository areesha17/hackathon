import 'package:flutter/material.dart';
import 'package:minihackathon/clothes.dart';

class homepage extends StatefulWidget {
  const homepage({ Key? key }) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List a = ["Logout","Cart","Favourite","About"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            onPressed: (){

            }, 
          icon: Icon(Icons.favorite), color: Colors.orange,),
          SizedBox(width: 4.0,),
          IconButton(
            onPressed: (){

            },
          
          icon:  Icon(Icons.add_shopping_cart), color: Colors.orange,),
          ],
      ),
      drawer: Drawer(
        child:  Column(
          children: [
            DrawerHeader(
              child: ListTile(
        leading: CircleAvatar(
          radius: 25,
        
          ),
        title: Text("Username"),
        subtitle: Text("areeshazafar5@gmail.com"), 
      ),
      ),
      Expanded(
        child: ListView.builder(
          itemCount: a.length,
          itemBuilder: (context, index){
            return border(a[index]);
          }
        ),
        ),    
      ],
      ),
      ),
      body: clothes(),
      
    );
  }
}

Widget border(String name){
  return Column(
    children: [
      ListTile(
  
      title: Text("$name"),
      ),
      SizedBox(
        height: 10,
      ),
    ],
  );
}