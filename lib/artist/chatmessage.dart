// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class ChatMessage extends StatefulWidget {
  const ChatMessage({super.key});

  @override
  State<ChatMessage> createState() => _ChatMessageState();
}

class _ChatMessageState extends State<ChatMessage> {

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Akash',style: TextStyle(
          fontFamily: 'ubuntu'
        ),),
      ),
      body: Expanded(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 400,left: 10),
                    child: Container(
                      height: 43,
                      width: 55,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(253, 231, 231, 1),
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)
                        )
                      ),
                      child: Center(child: Text('hii')),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10,left: 10),
                    child: Container(
                      height: 40,
                      width: 116,
                       decoration: BoxDecoration(
                          color: Color.fromRGBO(253, 231, 231, 1),
                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)
                          )
                        ),
                        child: Center(child: Text('How are you!')),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text('10:25',style: TextStyle(
                      color: Color.fromRGBO(173, 181, 189, 1),
                      fontSize: 10
                    ),),
                  ),
                Padding(
                  padding: const EdgeInsets.only(left: 300,top: 30),
                  child: Container(
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                              color: Color.fromRGBO(233, 236, 239, 1),
                              borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)
                              )
                            ),
                            child: Center(child: Text('Im fine')),
                              ),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 350),
                    child: Text('10:30',style: TextStyle(
                      color: Color.fromRGBO(173, 181, 189, 1),
                      fontSize: 10
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30,left: 10),
                    child: Container(
                      height: 40,
                      width: 229,
                      decoration: BoxDecoration(
                            color: Color.fromRGBO(253, 231, 231, 1),
                            borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)
                            )
                          ),
                          child: Center(child: Text('I would like to book a program')),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text('10:35',style: TextStyle(
                      color: Color.fromRGBO(173, 181, 189, 1),
                      fontSize: 10
                    ),),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 690),
                child: Center(
                  child: SizedBox(
                    width: screenWidth-20,
                    child: TextFormField(
                      style: TextStyle(
                        fontSize: 15
                      ),
                      decoration: InputDecoration(
                        fillColor: Color.fromARGB(255, 241, 240, 240),
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Color.fromARGB(255, 253, 253, 253),width: 3.0)
                        ),
                        hintText: 'Type something',
                        suffixIcon: IconButton(onPressed: () {
                          
                        }, icon: Icon(Icons.send)),
                        
                      ),
                      
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}