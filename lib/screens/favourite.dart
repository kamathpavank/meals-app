import 'package:flutter/material.dart';
import 'package:meal/models/meal.dart';
import 'package:meal/widgets/meal_item.dart';

class Favourite extends StatelessWidget {
  final List<Meal> favouriteMeals;

  Favourite(this.favouriteMeals);

  @override
  Widget build(BuildContext context) {
    if(favouriteMeals.isEmpty){
      return Center(
      child: Text('You have no Favourites'),
    );
    }else{
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id:favouriteMeals[index].id,
            title: favouriteMeals[index].title,
            imageUrl: favouriteMeals[index].imageUrl,
            duration: favouriteMeals[index].duration,
            affordability: favouriteMeals[index].affordability,
            complexity: favouriteMeals[index].complexity,
          );
        },
        itemCount: favouriteMeals.length,
      );
    }
    
  }
}
