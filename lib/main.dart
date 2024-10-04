import 'package:ecomerce/home_screen.dart';
import 'package:flutter/material.dart';

void main()=> runApp(Apps());

class Apps extends StatelessWidget {
  const Apps({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecomerce',
      home: HomeScreen());
  }
}