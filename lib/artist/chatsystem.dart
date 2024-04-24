import 'package:artist/artist/chatmessage.dart';
import 'package:flutter/material.dart';
class Person {
  final String name;
  final String? imagePath; // Use String? for nullable image paths

  Person({required this.name, this.imagePath});
}

class ChatSystem extends StatefulWidget {
  
  const ChatSystem({super.key});

  @override
  State<ChatSystem> createState() => _ChatSystemState();
}

class _ChatSystemState extends State<ChatSystem> {
  
  List person =[
    {'name':'Akash','status':'online','imagepath':'images/akash.png'},
    {'name':'Ravi','status':'online','imagepath':'images/ravi.png'},
    {'name':'joel','status':'online','imagepath':'images/joel.png'},
    {'name':'Raihan','status':'online','imagepath':'images/raihan.png'},
    {'name':'Reshma','status':'online','imagepath':'images/reshma.png'},
    {'name':'indhu','status':'online','imagepath':'images/indhu.png'},
    
  ];
  List chat = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Image.asset('images/artisticon.png',height: 31,width: 35,)
        ],
      ),
      body: Expanded(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Messages',style: TextStyle(
                      fontFamily: 'ubuntu',
                      fontSize: 32
                    ),),
                    const Text('7 conveners',style: TextStyle(
                      fontFamily: 'ubuntu',
                      color: Color.fromRGBO(173, 181, 189, 1),
                      fontSize: 12
                    ),),
                    Padding(
                      padding: const EdgeInsets.only(top: 20,right: 10),
                      child: Container(
                        height: 40,
                        width: 380,
                        color: const Color.fromARGB(255, 241, 239, 239),
                        child: const Padding(
                          padding: EdgeInsets.only(right: 330,top: 8),
                          child: Icon(Icons.search),
                        ),
                      ),
                    ),
                   Container(
                    height: 60,
                    width: 390,
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.black,
                        )
                      )
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text('Chats',style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                      ),),
                    ),
                   )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Column(
                  children: [
                    SizedBox(
                      height: 500,
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: person.length,
                        itemBuilder: (context, index) {
                          final imagepath = person[index]['imagepath'];
                        return ListTile(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const ChatMessage(),));
                          },
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(14),
                            child: SizedBox(
                              
                              height: 54,
                              width: 54,
                              child: Image.asset(imagepath ?? 'fallback_image.png')),
                          ),
                          title: Text(person[index]['name']),
                          subtitle: Text(person[index]['status'],style: const TextStyle(
                            color: Color.fromRGBO(86, 227, 159, 1)
                          ),),
                        );
                      },),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 250,left: 60),
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(86, 227, 159, 1),
                    borderRadius: BorderRadius.circular(10)
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