import 'package:artist/admin/amal.dart';
import 'package:flutter/material.dart';

class AdminArtist extends StatefulWidget {
  const AdminArtist({super.key});

  @override
  State<AdminArtist> createState() => _AdminArtistState();
}

class _AdminArtistState extends State<AdminArtist> {
    List art = [
    {'text1':'Amelswar','text2':'Dancer 3y exp','imagepath':'images/amlu.jpeg'},
    {'text1':'Bharat Kumar','text2':'Musician 6y exp','imagepath':'images/vishnu.png'},
    {'text1':'Jithusha','text2':'Singer 5y exp','imagepath':'images/amlu.jpeg'},
    {'text1':'Vishnu Pj','text2':'Musician 4y exp','imagepath':'images/vishnu.png'},

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Artists',style: TextStyle(
            fontFamily: 'ubuntu',
            color: Color.fromRGBO(194, 74, 107, 1)
          ),),
        ),
      ),
      body: Expanded(
        child: Stack(
          children: [
            ListView.separated(itemBuilder: (context, index) {
             final imagepath = art[index]['imagepath'];
             return ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(imagepath ?? 'fallback_image.png')),
              title: Text(art[index]['text1'],style: TextStyle(
                fontSize: 18
              ),),
              subtitle: Text(art[index]['text2']),
              trailing: Wrap(
                spacing: 8,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red
                    ),
                    onPressed: () {
                  
                }, child: Text('Ban',style: TextStyle(
                  color: Colors.white
                ),)),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue
                  ),
                  onPressed: () {
                  
                }, child: Text('Check',style: TextStyle(
                  color: Colors.white
                ),)),
                ],
              ),
             );
            }, separatorBuilder: (context, index) {
              return Divider(thickness: 1,color: Colors.white,);
            }, itemCount: art.length)
          ],
        ),
      )
    );
  }
}