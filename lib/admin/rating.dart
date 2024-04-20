import 'package:artist/admin/amal.dart';
import 'package:flutter/material.dart';

class AdminRating extends StatefulWidget {
  const AdminRating({super.key});

  @override
  State<AdminRating> createState() => _AdminRatingState();
}

class _AdminRatingState extends State<AdminRating> {
      List art = [
    {'text1':'Amelswar','text2':'Dancer 3y exp','imagepath':'images/amlu.jpeg','num':'98','imagepath1':'images/gold.png'},
    {'text1':'Bharat Kumar','text2':'Musician 6y exp','imagepath':'images/vishnu.png','num':'87','imagepath1':'images/silver.png'},
    {'text1':'Jithusha','text2':'Singer 5y exp','imagepath':'images/amlu.jpeg','num':'84'},
    {'text1':'Vishnu Pj','text2':'Musician 4y exp','imagepath':'images/vishnu.png','num':'83'},

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Rating',style: TextStyle(
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
             final imagepath1 = art[index]['imagepath1'];
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
                  Text('No of 5',style: TextStyle(
                    fontSize: 15
                  ),),
                  Icon(Icons.star,color: Colors.amber,size: 15,),
                  Text(art[index]['num'],style: TextStyle(
                    fontSize: 15
                  ),),
                  CircleAvatar(
                    backgroundImage: AssetImage(imagepath1 ?? 'fallback_image.png'),
                    radius:15,
                  )
                ],
              ),
              onTap: () {
                if (index == 0){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AdminAmal(),));
                }
              },
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