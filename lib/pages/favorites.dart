import 'package:decoracao_app/pages/userPage.dart';
import 'package:flutter/material.dart';

class favoritePage extends StatefulWidget{
  const favoritePage({super.key});

  @override
  State<favoritePage> createState() => _favoritePage();

}

class _favoritePage extends State<favoritePage>{

  late bool _isFavorite = false;

  void _changeFav(){
        if(_isFavorite == true) {
          setState(() {
            _isFavorite = false;
          });} else {
            setState(() {
              _isFavorite = true;
            });}
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(8),
        children: [
          ListTile(
            onTap: _changeFav,
            contentPadding: EdgeInsets.only(left: 25.0, right: 25.0),
            tileColor: Color.fromARGB(55, 221, 211, 211),
            trailing: IconButton(
              icon: (_isFavorite
              ? const Icon(Icons.favorite)
              : const Icon(Icons.favorite_outline)),
              onPressed: _changeFav,
            ),
            title: Text('Favorite'),
            subtitle: Text('Info'),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            ),
        ],
      ),
    );
  }

}