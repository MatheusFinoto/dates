import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'base_store.g.dart';

class BaseStore = _BaseStore with _$BaseStore;

abstract class _BaseStore with Store {
  @observable
  int selectedPage = 3;

  @action
  void setSelectedPage(int page) => selectedPage = page;

  @observable
  bool expand = true;

  @action
  void setExpand(v) => expand = v;

  @observable
  bool showContent = true;

  @action
  void setShowContent(v) => showContent = v;

  @observable
  PageController? pageController;

  @observable
  bool themeDark = false;

  @action
  void setTheme(value) => themeDark = value;


  @observable
  String? newDate;

  @action
  void setNewDate(String value){
     print(value);
     newDate = value;
    
  }

  @computed
  bool get isNewDateValid => (newDate != null)? true :false;

  @observable
  List<String> dates = [];

  @action
  void addDate(String date)=>dates.add(date);

  @action
  void removeDate(int index)=> dates.removeAt(index);


}
