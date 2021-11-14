
import 'package:flutter/material.dart';
import 'package:minihackathon/homepage.dart';

class home extends StatefulWidget {
  const home({ Key? key }) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  correct(){
  var password  = "123456";
  if (password != password){
    print("Wrong Password \n Please try again");
    ButtonTheme(
      child: ElevatedButton(
        child: Text("OK"),
        onPressed: (){}
      ),
    );  
  }
  
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text("Login", style: TextStyle(color: Colors.orange),),
       backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          children: <Widget>[
            Column(
              children: <Widget>[
                const SizedBox(
                  height: 120,
                ),
                Image(image: NetworkImage('https://i.pinimg.com/originals/66/22/ab/6622ab37c6db6ac166dfec760a2f2939.gif')),
                SizedBox(height: 60.0,),
              
                TextField(
                decoration: InputDecoration(
                  hintText: "Username",
                  hintStyle: TextStyle(
                    fontSize: 20,
                  ),
                  filled: true,
                ),
                ),
                SizedBox(height: 20,
                ),              
                TextField(
                  obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: TextStyle(
                    fontSize: 20,
                  ),
                  filled: true,
                ),
    
                ),
                const SizedBox(
              height: 20,
              width: 25,
            ),
            Column(
              children: <Widget>[
                ButtonTheme(
                  height: 40,
                  buttonColor: Colors.white,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => homepage()));
                      correct();
                    },
                    child: Text('Login',
                        style: TextStyle(fontSize: 25, color: Colors.black)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text('Not have an account? Register',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    )),
               ],         
            ),     
          ],
            ),
          ]
        ),
        ),
      );
  }
}
           
              
          
         