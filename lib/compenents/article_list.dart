import 'package:flutter/material.dart';

import 'item_container.dart';

// ignore: must_be_immutable
class IeeeListView extends StatelessWidget {
  const IeeeListView({Key? key, required this.items, required this.nextSceen})
      : super(key: key);
  final List<dynamic>? items;
  final Widget nextSceen;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: ListView.separated(
        itemCount: items!.length,
        itemBuilder: (context, index) => ItemContainer(
          title: items![index].title,
          imageUrl: items![index].imageUrl,
          date: items![index].date,
          nextScreen: nextSceen,
        ),
        separatorBuilder: (context, index) => Center(
          child: Container(
            height: 1.0,
            width: 350,
            color: Colors.grey[300],
          ),
        ),
      ),
    );
  }
}
