import 'package:artist/artist/normalbooking.dart';
import 'package:flutter/material.dart';

class Schedule extends StatefulWidget {
  const Schedule({super.key});

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
   List sche= [
    {'text1':'kochi','text2':'morning section','text3':'Kozhikode','text4':'night section'},
    {'text1':'Malappuram','text2':'morning section','text3':'Kondotty','text4':'night section'},
    {'text1':'Thrissur','text2':'morning section','text3':'Kuttiyadi','text4':'night section'}

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Schedules',style: TextStyle(
            fontFamily: 'ubuntu',
            color: Color.fromRGBO(194, 74, 107, 1)
          ),),
        ),
      ),
      body: Stack(
        children: [
          ListView.separated(itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => NormalBooking(),));
              },
              leading: Container(
                      height: 74,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromRGBO(233, 234, 244, 1)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(radius: 15,),
                            Column(
                              children: [
                                Text(sche[index]['text1']),
                                Text(sche[index]['text2'])
                              ],
                            ),
                            Column(
                              children: [
                                Text(sche[index]['text3']),
                                Text(sche[index]['text4'])
                              ],
                            )
                          ],
                        ),
                      ),
                      
                    ),

            );
          }, separatorBuilder: (context, index) {return
            Divider(thickness: 0,color: Colors.white,);
          }, itemCount: 3)
        ],
      ),
    );
  }
}