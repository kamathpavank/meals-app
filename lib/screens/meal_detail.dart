import 'package:flutter/material.dart';

class MealDetail extends StatelessWidget {
  static const routeName = '/meal_detail';

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
        appBar: AppBar(
          title: Text('$mealId'),
        ),
        body: Center(
          child: Text("Meal $mealId"),
        ));
  }
}
