import 'package:flutter/material.dart';

import '../../models/Restaurant.dart';
import './widgets/RestaurantCard.dart';


class RestaurantsPage extends StatefulWidget {
  RestaurantsPage({Key? key}) : super(key: key);

  @override
  _RestaurantsPageState createState() => _RestaurantsPageState();
}

class _RestaurantsPageState extends State<RestaurantsPage> {
  List<Restaurant> _restaurants = [
         Restaurant(
      name: 'Restaurante da 1',
      image: '',
      contact: '(32)1111-9999',
      uuid: '651963456156'
    ),
         Restaurant(
      name: 'Restaurante da 2',
      image: '',
      contact: '(32)3333-9999',
      uuid: '65165456156'
    ),
         Restaurant(
      name: 'Restaurante da 3',
      image: '',
      contact: '(32)4444-9999',
      uuid: '65485456156'
    ),
         Restaurant(
      name: 'Restaurante da 4',
      image: '',
      contact: '(32)5555-9999',
      uuid: '65156456156'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurantes'),
        centerTitle: true,
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: _buildRestaurantes(context),
    );
  }
  Widget _buildRestaurantes(context){
    return Container(
      child: ListView.builder(
        itemCount: _restaurants.length,
        itemBuilder: (context, index){
          final Restaurant restaurant = _restaurants[index];
          return RestaurantCard(
            uuid: restaurant.uuid,
            name: restaurant.name,
            image: restaurant.image,
            contact: restaurant.contact
          );
        },
        ),
    );
  }
}