import 'package:decoracao_app/pages/userPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductPage extends StatefulWidget {
  final String cardTitle;
  final String cardPrice;
  late final String cardImage;

  ProductPage({super.key, required this.cardTitle, required this.cardPrice, required this.cardImage});
  
  @override
  State<ProductPage> createState() => _productPageState();
}

class _productPageState extends State<ProductPage> {

  late String currentColor = '_grey.png';


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        toolbarHeight: 60,
        title: Text('Product Details', 
        style: const TextStyle(fontSize: 17, color: Colors.black),
        ),
        leading: IconButton(
            onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => UserPage(title: "Decoriums",)));
          }, 
          icon: Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Icon(Icons.arrow_back, color: Colors.black,),
          ),),
        actions: [
           Padding(
             padding: const EdgeInsets.only(top: 5.0, right: 10.0),
             child: IconButton(onPressed: (() {
                           ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('MORE')));
             }), icon: const Icon(Icons.more_horiz, color: Colors.black, size: 40.0,)),
           ),
            ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Text('Office', style: TextStyle(color: Colors.grey, fontSize: 15.0),),
                          Text(widget.cardTitle, style: TextStyle(color: Colors.black, fontSize: 22.0),),
                        ]),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 335,
                        ),
                      Column( children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(widget.cardPrice, style: TextStyle(color: Colors.black, fontSize: 20.0),),
                        ),
                      ]),
                    ],
                  ),
            ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: (BorderRadius.circular(23.0))),
              elevation: 0,
              color: Color.fromARGB(255, 218, 218, 218),
              child: SizedBox(         
                width: 220,
                height: 280,
                child: Column(
                  children: [
                    SizedBox(
                      child: Transform.scale(
                        scale: 1.25,
                        child: Image.asset(widget.cardImage + currentColor),)),
                    const SizedBox(height: 60.0,),
                  ],
                ),
              ),
            ),
          ),
          Transform.scale(
            scale: 1.03,
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: (BorderRadius.only(topLeft: Radius.circular(23.0), topRight: Radius.circular(23.0)))),
              elevation: 0,
              color: Colors.black87,
              child: SizedBox(
                height: 305,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(top: 23.0, left: 23.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                          height: 66.0,
                          width: 250.0,
                          decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0)),
                          child: Transform.scale(
                            scale: 1.05,
                            child: Row(
                              children: [Padding(
                                padding: const EdgeInsets.only(top: 15.0, bottom: 15.0, right: 15.0, left: 30.0),
                                child: Column(
                                children: [Text('Material', style: TextStyle(color: Colors.black87, fontSize: 17.0),),
                                Text('Fabric foam', style: TextStyle(color: Colors.grey, fontSize: 11.0),),
                                                  ]),
                              ),
                                                  Container(
                            height: 35.0,
                            width: 100.0,
                            decoration: BoxDecoration(
                              color: Colors.black87,
                              borderRadius: BorderRadius.circular(23.0),
                              image: DecorationImage(image: AssetImage('tecido.jpeg'), fit: BoxFit.cover),
                              ),
                            ),
                                                  ],
                            ),
                          ),
                          ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(23.0),),
                            child: IconButton(
                            onPressed: () {}, icon: Icon(Icons.shopping_bag_outlined,))),
                        ),
                      ]
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 40,
                        child: Text('Choose Color', style: TextStyle(color: Colors.white),)),
                      Center(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                height: 70.0,
                                width: 70.0,
                                child: FloatingActionButton(onPressed: () {             
                                  setState(() {
                                  currentColor = '_grey.png';                                 
                                  });
                                }, 
                                shape: RoundedRectangleBorder(side: BorderSide(width: 3,color: Colors.white),borderRadius: BorderRadius.circular(100)),
                                backgroundColor: Color.fromRGBO(75, 70, 72, 1),)),
                            ),
                        
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                height: 70.0,
                                width: 70.0,
                                child: FloatingActionButton(onPressed: () {
                                  setState(() {
                                  currentColor = '_beige.png';                                 
                                  });
                                },
                                shape: RoundedRectangleBorder(side: BorderSide(width: 3,color: Colors.white),borderRadius: BorderRadius.circular(100)),
                                backgroundColor: Color.fromRGBO(153, 134, 136, 1),)),  
                              ),
                        
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                height: 70.0,
                                width: 70.0,
                                child: FloatingActionButton(onPressed: () {
                                  setState(() {
                                  currentColor = '_green.png';                                 
                                  });
                                }, 
                                shape: RoundedRectangleBorder(side: BorderSide(width: 3,color: Colors.white),borderRadius: BorderRadius.circular(100)),
                                backgroundColor: Color.fromRGBO(88, 109, 95, 1),)),
                              ),
                          ],),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Center(
                  child: SizedBox(
                    width: 300.0,
                    height: 45.0,
                    child: ElevatedButton(
                        onPressed: () {}, 
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black87, 
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: (BorderRadius.circular(20.0))),
                          ), 
                    child: const Text(
                        "Buy Now", 
                        style: TextStyle(
                          fontSize: 20.0, 
                          color: Colors.black87),
                          ),
                        ),
                  )
                  ),
                      ),
                      
                    ],
                  ),
                ),
              ),
            ),
          )
          ],
        ),
      ),
      
    );
  }
}