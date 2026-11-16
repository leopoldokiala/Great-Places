import 'dart:io';

import 'package:flutter/material.dart';

import '../widgets/image_input.dart';

class PlacesFormScreen extends StatefulWidget {
  const PlacesFormScreen({super.key});

  @override
  State<PlacesFormScreen> createState() => _PlacesFormScreenState();
}

class _PlacesFormScreenState extends State<PlacesFormScreen> {
  final _titleController = TextEditingController();
  File? _pickedImage;

  void _selectedImage(File pickedImage) {
    _pickedImage = pickedImage;
  }

  void _submitForm() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Novo Lugar')),
      body: Column(
        crossAxisAlignment: .stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    TextField(
                      controller: _titleController,
                      decoration: InputDecoration(labelText: 'Título'),
                    ),
                    SizedBox(height: 10),
                    ImageInput(onSelectImage: () => _pickedImage),
                  ],
                ),
              ),
            ),
          ),
          ElevatedButton.icon(
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(
                Theme.of(context).colorScheme.secondary,
              ),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              ),
              elevation: WidgetStatePropertyAll(0),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            onPressed: _submitForm,
            label: Text('Adicionar'),
            icon: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
