// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:artist/login.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Expanded(
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                      height: 330,
                      width: 393,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(110, 176, 201, 1),
                        image: DecorationImage(image: AssetImage('images/backimg.png'),
                        fit: BoxFit.cover,
            
                        )
                      ),
                      child: Center(child: Padding(
                        padding: const EdgeInsets.only(bottom: 180),
                        child: Text('Settings',style: TextStyle(
                          fontFamily: 'ubuntu',
                          fontSize: 26
                        ),),
                      )),
                    ),
                    IconButton(onPressed: () {
                      Navigator.pop(context);
                    }, icon: Icon(Icons.arrow_back_ios,size: 30,)),
                    Padding(
                      padding: const EdgeInsets.only(top: 230),
                      child: Container(
                        height: 510,
                        width: 395,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50)
                          )
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 270),
                        child: Container(
                          height: 425,
                          width: 350,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.amber
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 700),
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
                          },
                          child: Container(
                            height: 50,
                            width: 350,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green
                            ),
                            child: Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Logout',style: TextStyle(
                                  fontFamily: 'ubuntu',
                                  color: Colors.white,
                                  fontSize: 32
                                ),),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Icon(Icons.logout,size: 32,color: Colors.white,),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                    
              ],
            ),
          ),
        ),
      ),
    );
  }
}