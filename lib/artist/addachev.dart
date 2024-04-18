import 'package:flutter/material.dart';

class AddAchev extends StatefulWidget {
  const AddAchev({super.key});

  @override
  State<AddAchev> createState() => _AddAchevState();
}

class _AddAchevState extends State<AddAchev> {
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
                  child: Center(child: Text('Add Acheivement',
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
                                child: Text('Content',style: TextStyle(
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
                                child: Text('Title',style: TextStyle(
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
                                child: Text('Link',style: TextStyle(
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