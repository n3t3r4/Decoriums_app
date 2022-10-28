import 'package:decoracao_app/pages/favorites.dart';
import 'package:decoracao_app/pages/home.dart';
import 'package:decoracao_app/pages/myOrders.dart';
import 'package:decoracao_app/pages/productPage.dart';
import 'package:decoracao_app/pages/settings.dart';
import 'package:decoracao_app/pages/support.dart';
import 'package:decoracao_app/widgets/side_menu_drawer.dart';
import 'package:flutter/material.dart';

class UserPage extends StatefulWidget{
  const UserPage({super.key, required this.title});

  final String title;
  

  @override
  State<UserPage> createState() => _userPageState();

}


class FilledCardExample extends StatefulWidget {
  final String cardTitle;
  final String cardPrice;
  final String cardImage;

  FilledCardExample({super.key, required this.cardTitle, required this.cardPrice, required this.cardImage});

  
  @override
  State<FilledCardExample> createState() => _FilledCardExampleState();
}

class _FilledCardExampleState extends State<FilledCardExample> {
  @override
  Widget build(BuildContext context) {
    
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: (BorderRadius.circular(23.0))),
          elevation: 0,
          color: Color.fromARGB(255, 218, 218, 218),
          child: SizedBox(         
            width: 200,
            height: 340,
            child: Column(
              children: [
                SizedBox(
                  child: Transform.scale(
                    scale: 1.50,
                    child: Image.asset(widget.cardImage + '_grey.png'))),
                const SizedBox(height: 60.0,),
                Container(
                  width: 200,
                  height: 80,
                  decoration: BoxDecoration(
                  color: Colors.black87, 
                  borderRadius: BorderRadius.circular(23.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Office', style: TextStyle(color: Colors.grey, fontSize: 10.0),),
                            Text(widget.cardTitle, style: TextStyle(color: Colors.white),),
                            const SizedBox(height: 10.0,),
                            Text(widget.cardPrice, style: TextStyle(color: Colors.white),),
                           
                          ],
                        ),
                       Padding(
                         padding: const EdgeInsets.only(left: 14.0, top: 15.0),
                         child: CircleAvatar(
                           radius: 30,
                           backgroundColor: Colors.white,
                           child: IconButton(onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ProductPage(cardTitle: widget.cardTitle, cardPrice: widget.cardPrice, cardImage: widget.cardImage,)));
                           }, icon: const Icon(Icons.shopping_bag_outlined, color: Colors.black87),),
                         ),
                       )
                      ],
                    ),
                  ), 

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _userPageState extends State<UserPage> {
  
  int currentIndex = 0;
  
  List<Widget> pageList = [
    HomePage(title: 'Decoriums'),
    favoritePage(),
    orderPage(),
    supportPage(),
    settingsPage(),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: sideMenu(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        toolbarHeight: 70,
        title: Text(widget.title, 
        style: const TextStyle(fontSize: 25, color: Colors.black),
        ),
        leading: Builder(
          builder: (context) {
            return IconButton(
                onPressed: () {
                Scaffold.of(context).openDrawer();
                // ScaffoldMessenger.of(context).showSnackBar(
                // const SnackBar(content: Text('MENU'))); 
              }, 
              icon: Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Icon(Icons.menu, color: Colors.black,),
              ),);
          }
        ),
          actions: [
           Padding(
             padding: const EdgeInsets.only(right: 13, top: 7),
             child: IconButton(onPressed: (() {
                ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('USER')));
             }), icon: const Icon(Icons.supervised_user_circle_rounded, color: Colors.black, size: 40.0,)),
           ),
            ],
          ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        selectedFontSize: 12.0,
        unselectedFontSize: 8.0,
        unselectedItemColor: Colors.black54,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index,), 
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.black,),
              label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite, color: Colors.black,),
              label: 'Favorites',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket, color: Colors.black,),
              label: 'My Orders'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat, color: Colors.black,),
              label: 'Support'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings, color: Colors.black,),
              label: 'Settings'
          ),
          
        ],
      ),
        body:pageList.elementAt(currentIndex),
        );
  }
}