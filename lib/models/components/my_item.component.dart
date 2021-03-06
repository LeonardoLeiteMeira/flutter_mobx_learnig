import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_mobx_learning/models/item.model.dart';

class MyItem extends StatelessWidget {
  final ItemModel item;
  final Function()? removeFromList;

  MyItem({required this.item, required this.removeFromList});

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return ListTile(
          leading: Checkbox(
            value: item.check,
            onChanged: (value) {
              if(value is bool){
                item.setCheck(value);
              }
            },
          ),
          title: Text(item.title),
          trailing: IconButton(
              icon: Icon(Icons.remove_circle),
              color: Colors.red,
              onPressed: removeFromList),
        );
      },
    );
  }
}
