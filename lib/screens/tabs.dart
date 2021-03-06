import 'package:flutter/material.dart';
import 'package:meal/models/meal.dart';
import 'package:meal/screens/favourite.dart';
import '../widgets/main_drawer.dart';
import './categories.dart';

class Tabs extends StatefulWidget {
  final List<Meal> favouriteMeals;

  Tabs(this.favouriteMeals);
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  List<Map<String, Object>> _pages; 

  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
    {'page': Categories(), 'title': 'Categories'},
    {
      'page': Favourite(widget.favouriteMeals),
      'title': 'Favourites',
    },
  ];
    // TODO: implement initState
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title']),
      ),
      drawer: MainDrawer(),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.category),
            title: Text('Categories'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.star),
            title: Text('Favourites'),
          )
        ],
      ),
    );
  }
}
