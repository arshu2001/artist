import 'package:flutter/material.dart';

class NormalArtist extends StatefulWidget {
  const NormalArtist({super.key});

  @override
  State<NormalArtist> createState() => _NormalArtistState();
}

class _NormalArtistState extends State<NormalArtist> {
  List art = [
    {'text1':'Amelswar','text2':'Dancer 3y exp','imagepath':'images/amlu.jpeg'},
    {'text1':'Bharat Kumar','text2':'Musician 6y exp','imagepath':'images/kumar.jpeg'},
    {'text1':'Jithusha','text2':'Singer 5y exp','imagepath':'images/jithusha.png'},
    {'text1':'Vishnu Pj','text2':'Musician 4y exp','imagepath':'images/vishnu.png'},
    {'text1':'Karthik C','text2':'Dancer 2y exp','imagepath':'images/akash.png'},
    {'text1':'DNB Dancer & Beats','text2':'Dancer 10y exp','imagepath':'images/dnb.jpeg'},

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
              trailing: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 30,
                  width: 64,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,
                  ),
                  child: Center(child: Text('check',style: TextStyle(
                    fontFamily: 'ubuntu',
                    color: Colors.white,
                    fontSize: 16
                  ),)),
                ),
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