// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
    home: Home()
));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body:

      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex:1,
            child: Container(
              color: Colors.blueGrey[200],
              child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZbUZdHqDNxKZRnmVnl9pG86E0-xCZiDWd9J4Eeyai0Nl_-bq7EBMaEoiISZfROGbQL-4&usqp=CAU',fit: BoxFit.cover),
            ),
            ),
          Expanded(
          flex: 2,
          child: Container(
             padding: EdgeInsets.fromLTRB(10.0,0.0,10.0,10.0),
             color: Colors.blueGrey[200],
             child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                     Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Email',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 3.0,
                          fontFamily: 'Comic_Neue',
                        ),)),
                     TextField(
                     decoration: InputDecoration(
                         prefixIcon: Icon(Icons.email)
                     ),),
                     SizedBox(height: 10.0),
                     Align(
                     alignment: Alignment.centerLeft,
                     child: Text('Password',
                       style: TextStyle(
                         fontSize: 20.0,
                         fontWeight: FontWeight.bold,
                         letterSpacing: 3.0,
                         fontFamily: 'Comic_Neue',
                       ),)),
                     TextField(
                     obscureText: true,
                     decoration: InputDecoration(
                       prefixIcon: Icon(Icons.person),
                     ),),
                     SizedBox(height: 20.0),
                     ElevatedButton(
                         onPressed: () {},
                         child: Text('Login',
                           style: TextStyle(
                             fontSize: 20.0,
                             fontWeight: FontWeight.bold,
                             letterSpacing: 3.0,
                             fontFamily: 'Comic_Neue',
                           ),),
                     ),
                     SizedBox(height: 20.0),
                     Text("Don't have an account ? Sign Up",
                         style: TextStyle(
                           fontSize: 20.0,
                           fontWeight: FontWeight.bold,
                           letterSpacing: 3.0,
                           fontFamily: 'Comic_Neue',
                         ),),
    ]
    ),
    ),),
            ]));
  }
}
