import 'package:flutter/material.dart';
import 'package:meal/screens/meal_detail.dart';
import 'package:meal/screens/tabs.dart';
import './screens/categories.dart';
import './screens/category_meals.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              body2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              title: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold
              ))),
      initialRoute: '/',
      routes: {
        '/':(ctx) => Tabs(),
        CategoryMeals.routeName: (ctx) => CategoryMeals(),
        MealDetail.routeName: (ctx) => MealDetail()
      },
      onGenerateRoute: (setttings) {
        print(setttings.arguments);
        // return MaterialPageRoute(builder: (ctx)=> Categories());
      },
      onUnknownRoute: (settings) {
        print(settings);
        return MaterialPageRoute(builder: (ctx)=> Categories());
      },
    );
  }
} 
