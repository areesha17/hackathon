import 'package:flutter/material.dart';
import 'package:minihackathon/homepage.dart';
import 'package:minihackathon/signup.dart';

class home extends StatefulWidget {
  const home({ Key? key }) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  TextEditingController pwd = TextEditingController();
  var input = "";

  dialog() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Wrong Password"),
            content: Text("Please tr again"),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "Ok",
                    style: TextStyle(color: Colors.black),
                  ))
            ],
          );
        });
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
                Image(image: NetworkImage('https://thumbs.gfycat.com/CompleteShallowFlyingsquirrel-size_restricted.gif')),
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

                Container(
                width: MediaQuery.of(context).size.width * 0.3,
                height: 38,
                child: ElevatedButton(
                  onPressed: () {
                    if (input == "123456") {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => homepage()));
                    } else {
                      setState(() {
                        dialog();
                      });
                      pwd.clear();
                    }
                  },
                   child : Text(""),
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
                      
                    },
                    child: Text('Login',
                        style: TextStyle(fontSize: 25, color: Colors.black)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: (){
                     Navigator.of(context).push(MaterialPageRoute(builder: (context) => signup()));

                  },
                  child: Text('Not have an account? Register',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    )),
                  
                    ),
               ],         
            ),     
          ],
            ),
                
              
          
                
        
          ],
                ),
            ),
        
      );
  }
}
           
              
          
         