import 'package:flutter/material.dart';
import 'package:skylab_first_clone/navigaton_menu.dart'; // Import the navigation menu
import 'package:skylab_first_clone/product_grid.dart';
import 'package:skylab_first_clone/top_header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Skylab First Clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ), debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            //NavigationMenu(),
            const SearchForm(),
            //Deneme()
            //ProductGrid()
          ],
        ),
      )
    );
  }
}
