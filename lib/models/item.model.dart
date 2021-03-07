import 'package:mobx/mobx.dart';
part 'item.model.g.dart';

class ItemModel = ItemModelBase with _$ItemModel;

abstract class ItemModelBase with Store {
  @observable
  String title;
  @action
  setTitle(String newTitle) => title = newTitle;

  @observable
  bool check;
  @action
  setCheck(bool newCheck) => check = newCheck;

  ItemModelBase({this.title, this.check});
}
