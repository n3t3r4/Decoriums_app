import 'package:decoracao_app/pages/home.dart';
import 'package:decoracao_app/pages/settings.dart';
import 'package:decoracao_app/pages/userPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:decoracao_app/widgets/globals.dart';

class sideMenu extends StatefulWidget{


  @override
  _sideMenuState createState() => _sideMenuState();
}

class _sideMenuState extends State<sideMenu>{

  void changeIndex(int){
    currentIndex = int;
    Navigator.push(context, MaterialPageRoute(builder: (context) => UserPage(title: "Decoriums",)));
  }

  final padding = EdgeInsets.symmetric(horizontal: 20);  

  @override
  Widget build(BuildContext context){
    return Drawer(
       width: MediaQuery.of(context).size.width - 150,
       child: Padding(
         padding: const EdgeInsets.only(top: 15.0),
         child: ListView(
          children: [
            TextButton(onPressed: () {
              changeIndex(0);
            }, child: Text('Home', style: TextStyle(fontSize: 20, color: Colors.black),),),
            TextButton(onPressed: () {
              changeIndex(1);
            }, child: Text('Favorites', style: TextStyle(fontSize: 15, color: Colors.black)),),
            TextButton(onPressed: () {
              changeIndex(2);
            }, child: Text('My Orders', style: TextStyle(fontSize: 15, color: Colors.black)),),
            TextButton(onPressed: () {
              changeIndex(3);
            }, child: Text('Support', style: TextStyle(fontSize: 15, color: Colors.black)),),
            TextButton(onPressed: () {
              changeIndex(4);
            }, child: Text('Settings', style: TextStyle(fontSize: 15, color: Colors.black)),),
          ],
         ),
       ),
    );
     
  }

}