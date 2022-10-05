// ignore_for_file: use_key_in_widget_constructors, camel_case_types, prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:login_ui/register_page.dart';

class LoginPage extends StatefulWidget {

  @override
  LoginPage_State createState() => LoginPage_State();
}

class LoginPage_State extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2.5,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    // ignore: prefer_const_literals_to_create_immutables
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF1200FF),
                      Color(0xFF00E5FF)
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(90)
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(),
                    Align(
                      alignment: Alignment.center,
                      child: Icon(Icons.person, 
                      size: 90, 
                      color: Colors.white,
                      )
                    ),
                    Spacer(),
      
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 32, right: 32),
                        child: Text("Login", 
                          style: TextStyle(
                            fontSize: 25, 
                            color: Colors.white
                          ),
                        ),
                      )
                    )
                  ],
                ),
              ),
              //Inputs
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2,
                padding: EdgeInsets.only(top: 50),
                child: Column(
                  children: [
                      //Input de Email
                    Container(
                      width: MediaQuery.of(context).size.width/1.2,
                      height: 50,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 7
                          )
                        ]
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.email, color: Colors.grey),
                          border: InputBorder.none,
                        hintText: "Email"
                        )
                      ),
                    ),
                        //Input de Password
                    Container(
                      width: MediaQuery.of(context).size.width/1.2,
                      height: 50,
                      margin: EdgeInsets.only(top: 32),
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 7
                          )
                        ]
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.vpn_key, color: Colors.grey),
                          border: InputBorder.none,
                        hintText: "Password"
                        )
                      ),
                    ),
                      //Forgot Password?
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(top: 24, right: 32),
                        child: Text("Forgot password?",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                    Spacer(),
                      //Button Login
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFF1200FF),
                                Color(0xFF00E5FF)
                              ]
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(50)
                            )
                          ),
                          width: MediaQuery.of(context).size.width/1.2,
                          height: 50,
                          margin: EdgeInsets.only(top: 5),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.transparent),
                            ),
                            onPressed: () {  
                            }, 
                            child: Text("Login".toUpperCase(),
                              style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24
                              ),
                            )
                          ),
                        ),
                        //Button de cadastro
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFF1200FF),
                                Color(0xFF00E5FF)
                              ]
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(50)
                            )
                          ),
                          width: MediaQuery.of(context).size.width/1.2,
                          height: 50,
                          margin: EdgeInsets.only(top: 5),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.transparent),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => RegisterPage()),
                                );
                            }, 
                            child: Text("Cadastre-se!".toUpperCase(),
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 24
                              ),
                            )
                          )
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}