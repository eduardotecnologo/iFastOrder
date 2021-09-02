import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class RestaurantCard extends StatelessWidget {
  final String? uuid;
  final String? name;
  final String? image;
  final String? contact;

  const RestaurantCard({this.uuid, this.name, this.image, this.contact});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 2, right: 1, left: 1, bottom: 2),
      child: Card(
        elevation: 2.5,
        child: Container(
          height: 80,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black26),
            borderRadius: BorderRadius.all(Radius.circular(4)),
            color: Colors.white
          ),
          child: Padding(
            padding: EdgeInsets.all(2),
            child: Row(
              children: <Widget>[
                Container(
                  width: 66,
                  height: 66,
                  child: ClipOval(
                   // child: Image.asset('assets/images/iFastOrderIcon.png'),
                   child: CachedNetworkImage(
                     imageUrl: image != '' ? image : 'http://',
                   ),
                  ),
                ),
                VerticalDivider(color: Colors.black26),
                Expanded(
                  child: Text(name!,
                  style: TextStyle(
                    color: Colors.black38),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}