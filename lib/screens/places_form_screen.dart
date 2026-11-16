import 'package:flutter/material.dart';

import '../widgets/image_input.dart';

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
      body: Column(
        crossAxisAlignment: .stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    TextField(decoration: InputDecoration(labelText: 'Título')),
                    SizedBox(height: 10),
                    ImageInput(),
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
            onPressed: () {},
            label: Text('Adicionar'),
            icon: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
