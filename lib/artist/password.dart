// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Passwordd extends StatefulWidget {
  const Passwordd({super.key});

  @override
  State<Passwordd> createState() => _PassworddState();
}

class _PassworddState extends State<Passwordd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Stack(
          children: [
             Container(
                  height: 230,
                  width: 395,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40)),
                    color: Color.fromRGBO(110, 176, 201, 1),
                    image: DecorationImage(image: AssetImage('images/backimg.png'),
                    fit: BoxFit.cover,
        
                    )
                  ),
                  child: Center(child: Text('Change Password',
                  style: TextStyle(
                    fontFamily: 'ubuntu',
                    fontSize: 24
                  ),
                  )),
                ),
                 Padding(
                      padding: const EdgeInsets.only(top: 170),
                      child: Container(
                        height: 710,
                        width: 395,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50)
                          )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 50,left: 10,right: 10),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text('Current Password',style: TextStyle(
                                  fontFamily: 'ubuntu',
                                  fontSize: 18
                                ),),
                              ),
                              TextFormField(
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: Colors.grey)
                                  ),
                                  hintText: 'Example'
                                ),
                                
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text('New Password',style: TextStyle(
                                  fontFamily: 'ubuntu',
                                  fontSize: 18
                                ),),
                              ),
                              TextFormField(
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: Colors.grey)
                                  ),
                                  hintText: 'Example'
                                ),
                                
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text('Re-enter Password',style: TextStyle(
                                  fontFamily: 'ubuntu',
                                  fontSize: 18
                                ),),
                              ),
                              TextFormField(
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: Colors.grey)
                                  ),
                                  hintText: 'Example'
                                ),
                                
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                  padding: const EdgeInsets.only(top: 650),
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                                  height: 50,
                                  width: 350,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.blue
                                  ),
                                  child: Center(
                                    child: Text('Submit',style: TextStyle(
                                      fontFamily: 'ubuntu',
                                      color: Colors.white,
                                      fontSize: 32
                                    ),),
                                  ),
                                ),
                    ),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}