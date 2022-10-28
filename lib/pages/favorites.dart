import 'package:decoracao_app/pages/userPage.dart';
import 'package:flutter/material.dart';

class favoritePage extends StatefulWidget{
  const favoritePage({super.key});

  @override
  State<favoritePage> createState() => _favoritePage();

}

class _favoritePage extends State<favoritePage>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Text('Favorites'),
      ),
    );
  }

}