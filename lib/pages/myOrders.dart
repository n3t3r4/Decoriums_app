import 'package:decoracao_app/pages/userPage.dart';
import 'package:flutter/material.dart';

class orderPage extends StatefulWidget{
  const orderPage({super.key});

  @override
  State<orderPage> createState() => _orderPage();

}

class _orderPage extends State<orderPage>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Text('Orders'),
      ),
    );
  }

}