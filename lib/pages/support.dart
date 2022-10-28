import 'package:decoracao_app/pages/userPage.dart';
import 'package:flutter/material.dart';

class supportPage extends StatefulWidget{
  const supportPage({super.key});

  @override
  State<supportPage> createState() => _supportPage();

}

class _supportPage extends State<supportPage>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Text('Support'),
      ),
    );
  }

}