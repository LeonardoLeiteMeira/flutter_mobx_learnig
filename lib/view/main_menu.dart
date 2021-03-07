import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_mobx_learning/controller/list_controller.dart';
import 'package:flutter_mobx_learning/models/components/my_item.component.dart';
import 'package:flutter_mobx_learning/models/components/my_text_field.inline.dart';
import 'package:flutter_mobx_learning/models/item.model.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';

class MainMenu extends StatelessWidget {
  _newItemDialog(context, Function addItem) => showDialog(
      context: context,
      builder: (_) {
        ItemModel newItem = ItemModel(check: false);
        String title;
        Function onChange(String value) {
          title = value;
        }

        return AlertDialog(
          title: Text("Add new item"),
          content: myTextFieldInline(
              "New Item Title", onChange, null, null, TextInputType.text),
          actions: [
            FlatButton(
              child: Text("Add"),
              onPressed: () {
                newItem.title = title;
                addItem(newItem);
                Navigator.pop(context);
              },
            ),
            FlatButton(
              child: Text("Cancel"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      });

  @override
  Widget build(BuildContext context) {
    var listItemController = GetIt.I.get<ListItemController>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Menu Page"),
        actions: [
          IconButton(
            icon: Observer(
              builder: (_) {
                return Text("${listItemController.totalSelected}");
              },
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        child: Observer(
          builder: (_) {
            return ListView.builder(
              itemCount: listItemController.listItem.length,
              itemBuilder: (_, index) {
                var item = listItemController.listItem[index];
                return Container(
                  child: MyItem(
                    item: item,
                    removeFromList: () => listItemController.removeItem(item),
                  ),
                );
              },
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _newItemDialog(context, listItemController.addItem);
        },
      ),
    );
  }
}
