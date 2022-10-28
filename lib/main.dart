import 'dart:math';

import 'package:decoracao_app/pages/productPage.dart';
import 'package:decoracao_app/pages/userPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Decoração',
      theme: ThemeData(
        fontFamily: "Jakarta",
      ),
        home: const MyHomePage(title: 'Decoriums'),
      // home: ProductPage(cardImage: 'chair_1_grey.png', cardPrice: '\$250.00', cardTitle: 'Chair'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

  PageController _Controller = PageController();


/// An indicator showing the currently selected page of a PageController
class DotsIndicator extends AnimatedWidget {
  const DotsIndicator({super.key, 
    required this.controller,
    required this.itemCount,
    required this.onPageSelected,
    this.color = Colors.white,
  }) : super(listenable: controller);

  /// The PageController that this DotsIndicator is representing.
  final PageController controller;

  /// The number of items managed by the PageController
  final int itemCount;

  /// Called when a dot is tapped
  final ValueChanged<int> onPageSelected;

  /// The color of the dots.
  ///
  /// Defaults to `Colors.white`.
  final Color color;

  // The base size of the dots
  static const double _kDotSize = 20.0;

  // The increase in the size of the selected dot
  static const double _kMaxZoom = 2.0;

  // The distance between the center of each dot
  static const double _kDotSpacing = 40.0;

  Widget _buildDot(int index) {
    double selectedness = Curves.easeOut.transform(
      max(
        0.0,
        1.0 - ((controller.page ?? controller.initialPage) - index).abs(),
      ),
    );
    double zoom = 1.0 + (_kMaxZoom - 1.0) * selectedness;
    
    return SizedBox(
      width: _kDotSpacing,
      child: Center(
        child: Material(
          color: color,
          type: MaterialType.button,
          child: SizedBox(
            width: _kDotSize * zoom,
            height: 3.0,
            child: InkWell(
              onTap: () => onPageSelected(index),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List<Widget>.generate(itemCount, _buildDot),
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  


  static const _kDuration = Duration(milliseconds: 600);

    static const _kCurve = Curves.ease;


  final List<Widget> _pages = <Widget>[
    ConstrainedBox(
      constraints: const BoxConstraints.expand(),
      child: SizedBox(
        
              child: Stack(
                
              children: <Widget>[
                
                ColorFiltered(
                  
                  colorFilter: const ColorFilter.mode(
                    Colors.grey,
                    BlendMode.darken,
                  ),
                  
                child:Image.asset("sofa.jpg", 
                  fit: BoxFit.cover,
                  height: double.infinity,
                  width: double.infinity,
                  alignment: Alignment.centerRight,
                  
                  ), 
                  
                  )
                ],
              ),
            ),
    ),
    ConstrainedBox(
      constraints: const BoxConstraints.expand(),
      child: SizedBox(
              child: Stack(
              children: <Widget>[
                ColorFiltered(
                  colorFilter: const ColorFilter.mode(
                    Colors.grey,
                    BlendMode.darken,
                  ),
                child:Image.asset("planta.jpg", 
                  fit: BoxFit.cover,
                  height: double.infinity,
                  width: double.infinity,
                  alignment: Alignment.centerRight,
                  ), 
                  )
                ],
              ),
            ),
    ),
    ConstrainedBox(
      constraints: const BoxConstraints.expand(),
      child: SizedBox(
              child: Stack(
              children: <Widget>[
                ColorFiltered(
                  colorFilter: const ColorFilter.mode(
                    Colors.grey,
                    BlendMode.darken,
                  ),
                child:Image.asset("parede.jpg", 
                  fit: BoxFit.cover,
                  height: double.infinity,
                  width: double.infinity,
                  alignment: Alignment.centerRight,
                  ), 
                  )
                ],
              ),
            ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
       appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 60,
        title: Text(widget.title, 
          style: const TextStyle(fontSize: 25),
        ),
      ),
      body: Center(
        child: Stack(
          children: <Widget> [
            PageView.builder(
              physics: const AlwaysScrollableScrollPhysics(),
              controller: _Controller,
              itemBuilder: (BuildContext context, int index) {
                return _pages[index % _pages.length];
                }
              ),
              const Padding(
                padding: EdgeInsets.only(top: 90.0, left: 29.0, right: 29.0),
                child: Center(child: Text("Decorate your dream home with a modern design at Decoriums.", style: TextStyle(fontSize: 27.0, color: Colors.white),)),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 270.0, left: 29.0, right: 29.0),
                child: Center(child: Text("Our products are of highest quality and combine functional utility with modern.", style: TextStyle(fontSize: 15.0, color: Colors.white70),)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 380.0),
                child: DotsIndicator(
                  controller: _Controller,
                  itemCount: _pages.length,
                  onPageSelected: (int page){
                    _Controller.animateToPage(page, duration: _kDuration, curve: _kCurve);
                  }, 
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 500.0),
                child: Center(
                  child: SizedBox(
                    width: 300.0,
                    height: 45.0,
                    child: ElevatedButton(
                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => UserPage(title: "Decoriums")));}, 
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black, 
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: (BorderRadius.circular(20.0))),
                        ), 
                    child: const Text(
                      "Get Started", 
                      style: TextStyle(
                        fontSize: 20.0, 
                        color: Colors.black),
                        ),
                      ),
                  )
                  ),
              ),
          ],
        ),
      ),
    );
  }
}