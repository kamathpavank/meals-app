import 'package:flutter/material.dart';

class CategoryMeals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The Recipe'),
      ),
      body: Center(
        child: Text('The Recipes For The Category'),
      ),
    );
  }
}
