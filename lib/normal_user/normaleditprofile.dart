// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class NormalEditProfile extends StatefulWidget {
  const NormalEditProfile({super.key});

  @override
  State<NormalEditProfile> createState() => _NormalEditProfileState();
}

class _NormalEditProfileState extends State<NormalEditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
                      height: 260,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 69, 99, 1.0),
                        image: DecorationImage(image: AssetImage('images/backimg.png'),
                        fit: BoxFit.cover,
                              
                        )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 130),
                      child: Container(
                        height: 610,
                        width: 395,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
                          color: Colors.white
                        ),
                        child:  Padding(
                          padding: const EdgeInsets.only(top: 100,left: 10,right: 10),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text('Name:',style: TextStyle(
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
                                child: Text('Email:',style: TextStyle(
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
                                child: Text('Mobile number:',style: TextStyle(
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
                                child: Text('Date of Birth:',style: TextStyle(
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
                                child: Text('Place:',style: TextStyle(
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
                    alignment: Alignment.bottomCenter,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                                  height: 50,
                                  width: 350,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromRGBO(255, 69, 99, 1.0),
                                  ),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Submit',style: TextStyle(
                                        fontFamily: 'ubuntu',
                                        color: Colors.white,
                                        fontSize: 32
                                      ),),
                                    ],
                                  ),
                                ),
                      ),
                    ),
                  ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 130),
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('images/deve.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 210,left: 220),
                      child: CircleAvatar(
                        radius: 10,    
                        backgroundColor: Color.fromRGBO(255, 69, 99, 1.0),
                        child: Center(child: Icon(Icons.add,color: Colors.white,)),
                      ),
                    )
        ],
      ),
    );
  }
}