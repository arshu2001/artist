// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:artist/login.dart';
import 'package:flutter/material.dart';

class Fristpage extends StatefulWidget {
  const Fristpage({super.key});

  @override
  State<Fristpage> createState() => _FristpageState();
}

class _FristpageState extends State<Fristpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('images/artistbackground.png'),
                fit: BoxFit.fill,
                )
              ),
              
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 70),
                    child: Image.asset('images/artisticon.png',width: 270),
                  ),

                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 550,left: 30),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
                },
                child: Container(
                  height: 70,
                  width: 330,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Get Started',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        fontFamily: 'Righteous'
                      ),),
                      Image.asset('images/arrow.png')
                    ],
                  )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 650),
              child: Text('A digital world for music passionate',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontFamily: 'Risque',
                fontSize: 32,
                color: Colors.white
                
              ),
              ),
            )
          ],
          
        ),
      ),
    );
  }
}