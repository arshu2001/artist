// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class HelpStt extends StatefulWidget {
  const HelpStt({super.key});

  @override
  State<HelpStt> createState() => _HelpSttState();
}

class _HelpSttState extends State<HelpStt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Stack(
          children: [
            Container(
                  height: 230,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40)),
                    color: Color.fromRGBO(110, 176, 201, 1),
                    image: DecorationImage(image: AssetImage('images/backimg.png'),
                    fit: BoxFit.cover,
        
                    )
                  ),
                ), 
                Padding(
                      padding: const EdgeInsets.only(top: 150),
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
                                child: Text('Describe your Problem',style: TextStyle(
                                  fontFamily: 'ubuntu',
                                  fontSize: 18
                                ),),
                              ),
                              SizedBox(
                                height: 250,
                                width: 380,
                                child: TextFormField(
                                  maxLines: 10,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                    hintText: 'Exapmle'
                                  ),
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