import 'package:flutter_mobx_learning/models/item.model.dart';
import 'package:mobx/mobx.dart';
part 'list_controller.g.dart';

class ListItemController = ListItemControllerBase with _$ListItemController;

abstract class ListItemControllerBase with Store {
  @observable
  ObservableList<ItemModel> listItem;

  @action
  setListItem(List<ItemModel> newListItem) => listItem = newListItem;

  @action
  addItem(ItemModel newItem) => listItem.add(newItem);

  @action
  removeItem(ItemModel removeItem) {
    listItem.remove(removeItem);
  }

  @computed
  int get totalSelected => listItem.where((item) => item.check).length;

  ListItemControllerBase() {
    listItem = ObservableList<ItemModel>();

    listItem.add(ItemModel(check: false, title: "Initial 1"));
    listItem.add(ItemModel(check: false, title: "Initial 2"));
    listItem.add(ItemModel(check: false, title: "Initial 3"));
  }
}
