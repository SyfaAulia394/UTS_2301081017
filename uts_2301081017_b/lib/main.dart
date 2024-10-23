import 'package:flutter/material.dart';
import 'drawer.dart'; 
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Peminjaman',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Peminjaman Syfa'),
      ),
      drawer: AppDrawer(), 
      body: Center(
        child: Text('Welcome to Simpan & Pinjam'),
      ),
    );
  }
}
