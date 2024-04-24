import 'package:flutter/material.dart';

class NormalEvents extends StatefulWidget {
  const NormalEvents({super.key});

  @override
  State<NormalEvents> createState() => _NormalEventsState();
}

class _NormalEventsState extends State<NormalEvents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Events',style: TextStyle(
            fontFamily: 'ubuntu',
            color: Color.fromRGBO(194, 74, 107, 1)
          ),),
        ),
      ),
      body: Expanded(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(width: double.infinity,),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      height: 189,
                      width: 341,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(image: AssetImage('images/events.png'),
                        fit: BoxFit.cover
                        )
                      ),
                      child: const Icon(Icons.play_circle,size: 70,color: Colors.white,),
                    ),
                  ),
                   Padding(
                     padding: const EdgeInsets.only(top: 15),
                     child: Container(
                      height: 189,
                      width: 341,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(image: AssetImage('images/event2.png'),
                        fit: BoxFit.cover
                        )
                      ),
                      child: const Icon(Icons.play_circle,size: 70,color: Colors.white,),
                    ),
                   ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Container(
                      height: 199,
                      width: 341,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(image: AssetImage('images/event3.png'),
                        fit: BoxFit.cover
                        )
                      ),
                      child: const Icon(Icons.play_circle,size: 70,color: Colors.white,),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 25),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                        ),
                        onPressed: () {
                        Navigator.pop(context);
                      }, child: const Text('Add +',style: TextStyle(
                        color: Colors.white
                      
                      ),)),
                    ),
                  ),
                  
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 134,left: 26),
                child: Container(
                      height: 65,
                      width: 341,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(251, 250, 248, 0.369),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 10,top: 10),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('KONDOTTY program',style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'ubuntu',
                            ),),
                            Text('06/12/2023',style: TextStyle(
                              fontFamily: 'ubuntu',
                              fontSize: 16
                            ),),
                          ],
                        ),
                      ),
                    ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 339,left: 26),
                child: Container(
                      height: 65,
                      width: 341,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(251, 250, 248, 0.369),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 10,top: 10),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('TRIVANDRAM program',style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'ubuntu',
                            ),),
                            Text('22/11/2023',style: TextStyle(
                              fontFamily: 'ubuntu',
                              fontSize: 16
                            ),),
                          ],
                        ),
                      ),
                    ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 554,left: 26),
                child: Container(
                      height: 65,
                      width: 341,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(251, 250, 248, 0.369),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 10,top: 10),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('KOCHI program',style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'ubuntu',
                            ),),
                            Text('27/06/2023',style: TextStyle(
                              fontFamily: 'ubuntu',
                              fontSize: 16
                            ),),
                          ],
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