// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:login_ui/login_page.dart';

class RegisterPage extends StatefulWidget {

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                        child: Text("Cadastro", 
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
              //inputs
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
                    //Spacer(),
                    Column(
                      children: [
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
                          margin: EdgeInsets.only(top: 35),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.transparent),
                            ),
                            onPressed: () {
                              
                            }, 
                            child: Text("Cadastrar".toUpperCase(),
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 24
                              ),
                            )
                          )
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                           padding: EdgeInsets.only(top: 24, right: 32),
                            child: InkWell(
                              child: Text("Voltar ao login",
                                style: TextStyle(color: Colors.blue,
                                decoration: TextDecoration.underline
                                ),
                              ),
                              onTap: (){
                                Navigator.pop(context);
                              },
                            ),
                          ),
                        ),
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