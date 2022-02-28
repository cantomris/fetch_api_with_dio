import 'package:flutter/material.dart';

class AllDataListItem extends StatelessWidget {
  final hotel;
  const AllDataListItem({Key key, this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: Text(hotel));
  }
}
