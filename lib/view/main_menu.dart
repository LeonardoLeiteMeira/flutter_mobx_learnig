import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_mobx_learning/controller/list_controller.dart';
import 'package:flutter_mobx_learning/models/components/my_item.component.dart';
import 'package:flutter_mobx_learning/models/components/my_text_field.inline.dart';
import 'package:flutter_mobx_learning/models/item.model.dart';
import 'package:get_it/get_it.dart';

class MainMenu extends StatelessWidget {
  Widget _listItensWidget(listItemController) => Observer(builder: (_) {
        return ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          /**
           * User shrinkWrap true and physics, and 
           * builder is called only for those children 
           * that are actually visible
          */
          itemCount: listItemController.listItemFiltered.length,
          itemBuilder: (_, index) {
            var item = listItemController.listItemFiltered[index];
            return Container(
              child: MyItem(
                item: item,
                removeFromList: () => listItemController.removeItem(item),
              ),
            );
          },
        );
      });

  Widget _filter(ListItemController listItemController) {
    return Padding(
        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
        child: myTextFieldInline(
        "Filter",
        listItemController.setFilter,
        null,
        null,
        TextInputType.text
      ),
    );
  }

  _newItemDialog(context, Function addItem) => showDialog(
      context: context,
      builder: (_) {
        ItemModel newItem = ItemModel(check: false, title: '');
        String title = "";
        onChange(String value) {
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
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          _filter(listItemController),
          _listItensWidget(listItemController),
          
        ]),
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
