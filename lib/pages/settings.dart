import 'package:decoracao_app/pages/userPage.dart';
import 'package:flutter/material.dart';

class settingsPage extends StatefulWidget{
  const settingsPage({super.key});

  @override
  State<settingsPage> createState() => _settingsPage();

}

class _settingsPage extends State<settingsPage>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Text('Settings'),
      ),
    );
  }

}