import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        scaffoldBackgroundColor: Colors.grey[200],
      ),
      home: MyHomePage(title: 'Products'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Winter Products"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[700],
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          ProductBox(
            name: "Apple iPhone",
            description: "هاتف مثالي لأيام الشتاء، أداء دافئ وسريع مع كاميرا تلتقط أجمل اللحظات الباردة",
            price: 1000,
            image: "iphone.png",
          ),
          ProductBox(
            name: "Google Pixel",
            description: "تجربة أندرويد نقية مع صور مذهلة حتى في أجواء الشتاء الغائمة",
            price: 800,
            image: "pixel.png",
          ),
          ProductBox(
            name: "Huawei Laptop",
            description: "لابتوب قوي للعمل في الليالي الشتوية الطويلة مع أداء ثابت وسريع",
            price: 2000,
            image: "laptop.png",
          ),
          ProductBox(
            name: "Honor Tablet",
            description: "مثالي لمشاهدة الأفلام تحت البطانية في أجواء الشتاء الباردة",
            price: 1500,
            image: "tablet.png",
          ),
        ],
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  final String name;
  final String description;
  final int price;
  final String image;

  ProductBox({
    Key? key,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6),
      height: 130,
      child: Card(
        color: Colors.white,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "assets/appimages/" + image,
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.blueGrey[800],
                      ),
                    ),
                    Text(
                      description,
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                    Text(
                      "Price: \$$price",
                      style: TextStyle(
                        color: Colors.blue[700],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
