import 'package:flutter/material.dart';
import 'package:great_places/providers/great_places.dart';
import 'package:provider/provider.dart';

import '../screens/places_form_screen.dart';
import './utils/app_routes.dart';

import './screens/places_list_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GreatPlaces(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Great Places',
        theme: ThemeData(
          colorScheme: .fromSeed(
            seedColor: Colors.white,
            primary: Colors.indigo,
            secondary: Colors.amber,
          ),

          appBarTheme: AppBarTheme(
            backgroundColor: Colors.indigo,
            foregroundColor: Colors.white,
            centerTitle: true,
          ),
        ),
        home: PlacesListScreens(),
        routes: {AppRoutes.placeForm: (context) => PlacesFormScreen()},
      ),
    );
  }
}
