import 'package:flutter/material.dart';
import 'package:minihackathon/home.dart';
import 'package:minihackathon/homepage.dart';

class signup extends StatefulWidget {
  const signup({ Key? key }) : super(key: key);

  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.orange),
          onPressed: (){
            Navigator.of(context).pop(MaterialPageRoute(builder: (context) => home()));
          },
        ),
       title: Text("Sign Up", style: TextStyle(color: Colors.orange),),
       backgroundColor: Colors.white,
      ),
      
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
                  labelText: "Username",
                  hintStyle: TextStyle(
                    fontSize: 20,
                  ),
                  filled: true,
                ),
                
                ),
                SizedBox(height: 25,
                ),     
                TextField(
                decoration: InputDecoration(
                labelText: "Email",
                  hintStyle: TextStyle(
                    fontSize: 20,
                  ),
                  filled: true,
                ),
                
                ),
                SizedBox(height: 25,
                ),              
                TextField(
                  obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
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
                      
                    },
                    child: Text('Sign Up',
                        style: TextStyle(fontSize: 25, color: Colors.black)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                 TextButton(
                  child: Text('Already have an account? Login.',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),),
                  onPressed: (){
                    Navigator.of(context).pop(MaterialPageRoute(builder: (context) => home()));
                  }
                    ),
                    
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
           
              
          
         