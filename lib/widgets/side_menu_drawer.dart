import 'package:decoracao_app/pages/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class sideMenu extends StatelessWidget{
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
            }, child: Text('Home', style: TextStyle(fontSize: 20, color: Colors.black),),),
            TextButton(onPressed: () {
            }, child: Text('Favorites', style: TextStyle(fontSize: 15, color: Colors.black)),),
            TextButton(onPressed: () {
            }, child: Text('My Orders', style: TextStyle(fontSize: 15, color: Colors.black)),),
            TextButton(onPressed: () {
            }, child: Text('Support', style: TextStyle(fontSize: 15, color: Colors.black)),),
            TextButton(onPressed: () {
            }, child: Text('Settings', style: TextStyle(fontSize: 15, color: Colors.black)),),
          ],
         ),
       ),
    );
     
  }

}