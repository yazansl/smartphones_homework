import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('متجر الأجهزة الإلكترونية'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: const [
          ProductBox(
            name: 'آيفون 14',
            description: 'هاتف أنيق بأداء عالي',
            price: 4200,
            color: Colors.blueGrey,
          ),
          ProductBox(
            name: 'لابتوب ديل',
            description: 'مناسب للدراسة والعمل',
            price: 2800,
            color: Colors.deepPurple,
          ),
          ProductBox(
            name: 'سماعات بلوتوث',
            description: 'صوت نقي وعزل ممتاز',
            price: 350,
            color: Colors.orange,
          ),
          ProductBox(
            name: 'ساعة ذكية',
            description: 'تتبع النشاط والصحة',
            price: 600,
            color: Colors.green,
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
  final Color color;

  const ProductBox({
    super.key,
    required this.name,
    required this.description,
    required this.price,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      child: Container(
        padding: const EdgeInsets.all(8),
        height: 120,
        child: Row(
          children: [
            Container(
              width: 120,
              height: 120,
              color: color,
              alignment: Alignment.center,
              child: Text(
                name,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    description,
                    textDirection: TextDirection.rtl,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'السعر: $price ريال',
                    textDirection: TextDirection.rtl,
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
