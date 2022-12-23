import 'dart:convert';
import 'dart:math';

import 'package:dates/src/utils/local_data.dart';
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
  void setNewDate(String value) {
    newDate = value;
  }

  @observable
  TextEditingController newDateController = TextEditingController();

  @computed
  bool get isNewDateValid => (newDate != null && newDate != '') ? true : false;

  @observable
  ObservableList<String> dates = ObservableList<String>();

  @action
  void addDate(String date) {
    dates.add(date);
    saveLocal();
  }

  @action
  void removeDate(String value) {
    dates.remove(value);
    saveLocal();
  }

  @action
  void saveLocal() {
    LocalData().saveData(key: 'date', value: jsonEncode(dates));
  }

  @action
  Future<void> loadLocal() async {
    dynamic data = await LocalData().loadData(key: 'date');
    print("data $data");
    print("data ${data.runtimeType}");
    var list = jsonDecode(data);

    for (var u in list) {
      dates.add(u);
    }
  }

  @action
  void generateRandom() {
    if (dates.isEmpty) {
      randomDate = '';
    } else {
      randomDate = dates[Random().nextInt(dates.length)];
    }
  }

  @observable
  String randomDate = '';
}
