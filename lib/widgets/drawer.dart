import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  final imageUrl="https://cdn.pixabay.com/photo/2017/01/08/13/58/cube-1963036__480.jpg";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      backgroundColor: Colors.deepPurple,
     
     
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
           DrawerHeader(
            padding: EdgeInsets.zero,
            
            
            child:  UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(
                color: Colors.deepPurple
              ),
              
              accountName: Text("Pujan Paneru"), 
              accountEmail: Text("ppoujan@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
                // backgroundImage: ,
                // backgroundColor: Colors.white,
              ),
              
              )
            ),
            const ListTile(
              leading: Icon(CupertinoIcons.home,color: Colors.white,),
              title: Text("Home",textScaleFactor: 1.2,style: TextStyle(color: Colors.white),),
            ),
            const ListTile(
              leading: Icon(CupertinoIcons.person_2_alt,color: Colors.white,),
              title: Text("Profile",textScaleFactor: 1.2,style: TextStyle(color: Colors.white,),),
            ),
            const ListTile(
              leading: Icon(CupertinoIcons.mail,color: Colors.white,),
              title: Text("Email",textScaleFactor: 1.2,style: TextStyle(color: Colors.white),),

            )
            
        ],
      )
    );
  }
}