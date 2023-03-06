import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter App',
        theme: ThemeData(
          primaryColor: Colors.pink,
        ),
        home: const Scaffold(
          body: MyHomePage(),
        ));
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('SetRating Example',style: TextStyle(fontSize: 25),),
          centerTitle: true,
          backgroundColor: Colors.pink[300],
        ),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(2, 10, 2, 10),
          children: const <Widget>[
            
            ProductBox(
              name: "Laptop",
              description: "Laptop is most productive development tool",
              price: 20000,
              image: "Image/Laptop.png",
            ),
            ProductBox(
              name: "Tablet",
              description: "Tablet is the most useful device ever for meeting",
              price: 5000,
              image: "Image/Tablet.png",
            ),
            ProductBox(
              name: "Pendrive",
              description: "Pendrive is useful storage medium",
              price: 500,
              image: "Image/Pendrive.png",
            ),
            ProductBox(
              name: "Floppy Drive",
              description: "Floppy drive is useful rescue storage medium",
              price: 1000,
              image: "Image/Floppy.png",
            ),
            ProductBox(
              name: "iPhone",
              description: "iPhone is the stylist phone ever",
              price: 10000,
              image: "Image/Iphone.png",
            ),
            ProductBox(
              name: "Pixel",
              description: "Pixel is the most featureful phone ever",
              price: 800,
              image: "Image/Pixel.png",
            ),
          ],
        ),
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  const ProductBox(
      {super.key,
      required this.name,
      required this.description,
      required this.image,
      required this.price});

  final String name;
  final String description;
  final int price;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      height: 220,
      child: Card(
        child: Column(
          children: [Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(image: AssetImage(image), width: 150, height: 150),
              Expanded(
                  child: Container(
                padding: const EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      this.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(this.description, style: const TextStyle(fontSize: 15)),
                    SizedBox(height: 5,),
                    Text("Price :" + this.price.toString(),
                        style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                    
                  ],
                ),
              ))
            ],
          ),
          RatingBox(),
          ]
        ),
      ),
    );
  }
}

class RatingBox extends StatefulWidget {
  const RatingBox({super.key});

  @override
  State<RatingBox> createState() => _RatingBoxState();
}

class _RatingBoxState extends State<RatingBox> {
  int _rating = 0;

  void _setRatingAsOne() {
    setState(() {
      _rating = 1;
    });
  }


  void _setRatingAsTwo() {
    setState(() {
      _rating = 2;
    });
  }

  void _setRatingAsThree() {
    setState(() {
      _rating = 3;
    });
  }
   void _setRatingAsFour() {
    setState(() {
      _rating = 4;
    });
  }
   void _setRatingAsFive() {
    setState(() {
      _rating = 5;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    
    print(_rating);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
      Container(
        padding: const EdgeInsets.all(0),
        child: IconButton(
            onPressed: _setRatingAsOne,
            color: Colors.red[500],
            iconSize: 35,
            icon: (_rating >= 1
                ? Icon(Icons.star, size: 35)
                : Icon(
                    Icons.star_border,
                    size: 35,
                  ))),
      ),
      Container(
        padding: const EdgeInsets.all(0),
        child: IconButton(
            onPressed: _setRatingAsTwo,
            color: Colors.red[500],
            iconSize: 35,
            icon: (_rating >= 2
                ? Icon(Icons.star, size: 35)
                : Icon(
                    Icons.star_border,
                    size: 35,
                  ))),
      ),
      Container(
        padding: const EdgeInsets.all(0),
        child: IconButton(
            onPressed: _setRatingAsThree,
            color: Colors.red[500],
            iconSize: 35,
            icon: (_rating >= 3
                ? Icon(Icons.star, size: 35)
                : Icon(
                    Icons.star_border,
                    size: 35,
                  ))),
      ),
      Container(
        padding: const EdgeInsets.all(0),
        child: IconButton(
            onPressed: _setRatingAsFour,
            color: Colors.red[500],
            iconSize: 35,
            icon: (_rating >= 4
                ? Icon(Icons.star, size: 35)
                : Icon(
                    Icons.star_border,
                    size: 35,
                  ))),
      ),
      Container(
        padding: const EdgeInsets.all(0),
        child: IconButton(
            onPressed: _setRatingAsFive,
            color: Colors.red[500],
            iconSize: 35,
            icon: (_rating >= 5
                ? Icon(Icons.star, size: 35)
                : Icon(
                    Icons.star_border,
                    size: 35,
                  ))),
      )
    ]);
  }
}
