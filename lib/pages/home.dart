import 'package:decoracao_app/pages/userPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key, required this.title});

  final String title;
  

  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
           children: [
            Padding(
             padding: const EdgeInsets.only(left: 19.0, top: 20.0, right: 32.0),
             child: Text('Find the best modern design furniture in field', style: TextStyle(fontSize: 22.0, color: Colors.black),),
           ),
           Padding(
             padding: const EdgeInsets.all(13.0),
             child: Row(
              children: [
              Padding(
                padding: const EdgeInsets.only(left: 3.0),
                child: SizedBox(
                  height: 43.0, 
                  width: MediaQuery.of(context).size.width - 108,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.white70, foregroundColor: Colors.grey,
                    shape: RoundedRectangleBorder(borderRadius: (BorderRadius.circular(20.0))),),
                  onPressed: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                   const SnackBar(content: Text('SEARCH')));
                  },
                  child: Row(
                    children: [
                      const Icon(Icons.search_rounded,),
                      Text("Search items", style: TextStyle(fontSize: 13.0),),
                    ],
                  ),
                   )),
              ), 
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 3.0),
                child: ElevatedButton(
                  onPressed: () {
                                ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('FILTER')));
                  },style: ElevatedButton.styleFrom(backgroundColor: Colors.black, shape: RoundedRectangleBorder(borderRadius: (BorderRadius.circular(5.0))),), child: Icon(Icons.filter_list_rounded)),
              )],),
           ),
           Padding(
             padding: const EdgeInsets.only(left: 19.0),
             child: Align(alignment: Alignment.centerLeft,
              child: Text('Best Offers', style: TextStyle(fontSize: 17.0, color: Colors.black),)),
           ),
            SizedBox(  
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  //CARDS
                  children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: FilledCardExample(cardTitle: 'Mondy Chair', cardPrice: '\$150.00', cardImage: 'chair_1',),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: FilledCardExample(cardTitle: 'Altha Chair', cardPrice: '\$120.00', cardImage: 'chair_2',),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: FilledCardExample(cardTitle: 'Embrance Chair', cardPrice: '\$100.00', cardImage: 'chair_3',),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: FilledCardExample(cardTitle: 'Mondy Chair', cardPrice: '\$150.00', cardImage: 'chair_1',),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: FilledCardExample(cardTitle: 'Altha Chair', cardPrice: '\$120.00', cardImage: 'chair_2',),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: FilledCardExample(cardTitle: 'Embrance Chair', cardPrice: '\$100.00', cardImage: 'chair_3',),
                      ),
                  ],
                ),
              ),
            ),   
            ]
        ),
      );
  }
}