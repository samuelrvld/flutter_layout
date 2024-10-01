import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Layout Demo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Mengatur spasi vertikal secara merata
            children: <Widget>[
              // Row untuk ikon yang disusun secara horizontal
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star, color: Colors.green[500]),
                  Icon(Icons.star, color: Colors.green[500]),
                  Icon(Icons.star, color: Colors.green[500]),
                  const Icon(Icons.star, color: Colors.black),
                  const Icon(Icons.star, color: Colors.black),
                ],
              ),
              // Column untuk gambar yang disusun secara vertikal
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Mengatur spasi vertikal secara merata
                children: <Widget>[
                  Image.asset('assets/images/img1.jpeg', height: 100), // Gambar pertama (vertikal)
                  Image.asset('assets/images/img2.jpeg', height: 100), // Gambar kedua (vertikal)
                  Image.asset('assets/images/img3.jpeg', height: 100), // Gambar ketiga (vertikal)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
