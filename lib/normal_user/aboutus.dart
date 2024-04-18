// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class NormalAbout extends StatefulWidget {
  const NormalAbout({super.key});

  @override
  State<NormalAbout> createState() => _NormalAboutState();
}

class _NormalAboutState extends State<NormalAbout> {
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
                  child: Center(child: Text('About Use',style: TextStyle(
                    fontFamily: 'ubuntu',
                    fontSize: 24
                  ),)),
                ), 
                Padding(
                      padding: const EdgeInsets.only(top: 190),
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
                          padding: const EdgeInsets.only(top: 30,left: 30),
                          child: Column(
                            children: [
                              Text('Artify : A Digital world for music  passionate',style: TextStyle(
                                fontSize: 28
                              ),),
                              Padding(
                                padding: const EdgeInsets.only(top: 90),
                                child: Text('Artify is a flutter-based mobile application designed  to ignite and empower music related artists. Through  this app most of the artists going to be popular in  public. The old way of event processes are going to  change in this digital world. This app help to bring up  the artists for popularity and financial stability.'),
                              )
                            ],
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