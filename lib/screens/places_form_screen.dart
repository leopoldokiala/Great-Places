import 'package:flutter/material.dart';

class PlacesFormScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<PlacesFormScreen> createState() => _PlacesFormScreenState();
}

class _PlacesFormScreenState extends State<PlacesFormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Novo Lugar')),
      body: Center(child: Text('Form!!!')),
    );
  }
}
