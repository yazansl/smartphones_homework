import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF0D1B2A), // كحلي غامق
        appBar: AppBar(
          backgroundColor: const Color(0xFF1B263B), // أزرق داكن
          title: const Text(
            'الصفحة الرئيسية',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        body: const Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'yazan abdullah',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFE0E1DD), // أبيض مائل للرمادي
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 12),
              Text(
                '444224422',
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF778DA9), // أزرق فاتح
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
