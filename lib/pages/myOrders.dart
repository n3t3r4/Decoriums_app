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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
              margin: EdgeInsets.all(8.0),
              color: Color.fromARGB(55, 221, 211, 211),
              child: Column(
                children: [
                  ListTile(
                    tileColor: Color.fromARGB(55, 221, 211, 211),
                    title: Text('Chair', style: TextStyle(color: Colors.black, fontSize: 15),),
                    leading: Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Container(
                        child: Image.asset('chair_1_green.png'),
                      ),
                    ),
                    trailing: Icon(Icons.delete, color: Colors.grey,),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}