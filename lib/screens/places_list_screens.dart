import 'package:flutter/material.dart';
import 'package:great_places/providers/great_places.dart';
import 'package:great_places/utils/app_routes.dart';
import 'package:provider/provider.dart';

class PlacesListScreens extends StatelessWidget {
  const PlacesListScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meus Lugares'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.placeForm);
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: Consumer<GreatPlaces>(
        child: Center(child: Text('Nenhum local cadastrado!')),
        builder: (context, greatPlaces, ch) => greatPlaces.itemsCount == 0
            ? ch!
            : ListView.builder(
                itemCount: greatPlaces.itemsCount,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: FileImage(
                        greatPlaces.itemByIndex(index).image,
                      ),
                    ),
                    title: Text(greatPlaces.items[index].title),
                    onTap: () {},
                  );
                },
              ),
      ),
    );
  }
}
