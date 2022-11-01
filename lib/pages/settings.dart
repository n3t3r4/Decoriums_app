import 'package:decoracao_app/pages/userPage.dart';
import 'package:flutter/material.dart';

class settingsPage extends StatefulWidget{
  const settingsPage({super.key});

  @override
  State<settingsPage> createState() => _settingsPage();

}

class _settingsPage extends State<settingsPage>{

  bool darkMode = false;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
              margin: EdgeInsets.all(8.0),
              color: Colors.black87,
              child: ListTile(
                title: Text('User Name', style: TextStyle(color: Colors.white, fontSize: 20),),
                leading: Icon(Icons.supervised_user_circle, color: Colors.white, size: 40.0,),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
              margin: EdgeInsets.all(8.0),
              color: Colors.white10,
              child: Column(
                children: [
                  ListTile(
                    title: Text('Appearence', style: TextStyle(color: Colors.black, fontSize: 15),),
                    leading: Icon(Icons.app_registration_rounded, color: Colors.black, size: 25.0,),
                  ),
                  ListTile(
                    title: Text('Privacy', style: TextStyle(color: Colors.black, fontSize: 15),),
                    leading: Icon(Icons.fingerprint, color: Colors.black, size: 25.0,),
                  ),
                  SwitchListTile(
                    title: Text('Dark Mode', style: TextStyle(color: Colors.black, fontSize: 15),),
                    activeColor: Colors.black87,
                    value: darkMode,
                    secondary: Icon(Icons.dark_mode_outlined, color: Colors.black, size: 25.0,),
                    onChanged: (bool value) {
                      if (darkMode == false) {
                      setState(() {
                        darkMode = true;
                      });} else {
                        setState(() {
                        darkMode = false;
                      });}
                    },
                  ),
                ],
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
              margin: EdgeInsets.all(8.0),
              color: Colors.white10,
              child: ListTile(
                title: Text('About', style: TextStyle(color: Colors.black, fontSize: 15),),
                leading: Icon(Icons.info_outline, color: Colors.black, size: 25.0,),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
              margin: EdgeInsets.all(8.0),
              color: Colors.white10,
              child: ListTile(
                title: Text('Send Feedback', style: TextStyle(color: Colors.black),),
                leading: Icon(Icons.feedback_outlined, color: Colors.black, size: 25.0,),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
              margin: EdgeInsets.all(8.0),
              color: Colors.white10,
              child: ListTile(
                title: Text('More Settings', style: TextStyle(color: Colors.black, fontSize: 15),),
                leading: Icon(Icons.more_horiz_outlined, color: Colors.black, size: 25.0,),
              ),
            ),
          ],
        ),
      ),
      );
  }

}