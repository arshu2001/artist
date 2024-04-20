import 'package:artist/admin/amal.dart';
import 'package:artist/admin/usercheck.dart';
import 'package:flutter/material.dart';

class AdminUser extends StatefulWidget {
  const AdminUser({super.key});

  @override
  State<AdminUser> createState() => _AdminUserState();
}

class _AdminUserState extends State<AdminUser> {
      List art = [
    {'text1':'Devanand s','text2':'Dancer 3y exp','imagepath':'images/deve.png'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('User',style: TextStyle(
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
                fontSize: 16
              ),),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AdminCheck(),));
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