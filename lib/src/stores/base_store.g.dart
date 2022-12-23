// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$BaseStore on _BaseStore, Store {
  Computed<bool>? _$isNewDateValidComputed;

  @override
  bool get isNewDateValid =>
      (_$isNewDateValidComputed ??= Computed<bool>(() => super.isNewDateValid,
              name: '_BaseStore.isNewDateValid'))
          .value;

  late final _$selectedPageAtom =
      Atom(name: '_BaseStore.selectedPage', context: context);

  @override
  int get selectedPage {
    _$selectedPageAtom.reportRead();
    return super.selectedPage;
  }

  @override
  set selectedPage(int value) {
    _$selectedPageAtom.reportWrite(value, super.selectedPage, () {
      super.selectedPage = value;
    });
  }

  late final _$expandAtom = Atom(name: '_BaseStore.expand', context: context);

  @override
  bool get expand {
    _$expandAtom.reportRead();
    return super.expand;
  }

  @override
  set expand(bool value) {
    _$expandAtom.reportWrite(value, super.expand, () {
      super.expand = value;
    });
  }

  late final _$showContentAtom =
      Atom(name: '_BaseStore.showContent', context: context);

  @override
  bool get showContent {
    _$showContentAtom.reportRead();
    return super.showContent;
  }

  @override
  set showContent(bool value) {
    _$showContentAtom.reportWrite(value, super.showContent, () {
      super.showContent = value;
    });
  }

  late final _$pageControllerAtom =
      Atom(name: '_BaseStore.pageController', context: context);

  @override
  PageController? get pageController {
    _$pageControllerAtom.reportRead();
    return super.pageController;
  }

  @override
  set pageController(PageController? value) {
    _$pageControllerAtom.reportWrite(value, super.pageController, () {
      super.pageController = value;
    });
  }

  late final _$themeDarkAtom =
      Atom(name: '_BaseStore.themeDark', context: context);

  @override
  bool get themeDark {
    _$themeDarkAtom.reportRead();
    return super.themeDark;
  }

  @override
  set themeDark(bool value) {
    _$themeDarkAtom.reportWrite(value, super.themeDark, () {
      super.themeDark = value;
    });
  }

  late final _$newDateAtom = Atom(name: '_BaseStore.newDate', context: context);

  @override
  String? get newDate {
    _$newDateAtom.reportRead();
    return super.newDate;
  }

  @override
  set newDate(String? value) {
    _$newDateAtom.reportWrite(value, super.newDate, () {
      super.newDate = value;
    });
  }

  late final _$newDateControllerAtom =
      Atom(name: '_BaseStore.newDateController', context: context);

  @override
  TextEditingController get newDateController {
    _$newDateControllerAtom.reportRead();
    return super.newDateController;
  }

  @override
  set newDateController(TextEditingController value) {
    _$newDateControllerAtom.reportWrite(value, super.newDateController, () {
      super.newDateController = value;
    });
  }

  late final _$datesAtom = Atom(name: '_BaseStore.dates', context: context);

  @override
  ObservableList<String> get dates {
    _$datesAtom.reportRead();
    return super.dates;
  }

  @override
  set dates(ObservableList<String> value) {
    _$datesAtom.reportWrite(value, super.dates, () {
      super.dates = value;
    });
  }

  late final _$randomDateAtom =
      Atom(name: '_BaseStore.randomDate', context: context);

  @override
  String get randomDate {
    _$randomDateAtom.reportRead();
    return super.randomDate;
  }

  @override
  set randomDate(String value) {
    _$randomDateAtom.reportWrite(value, super.randomDate, () {
      super.randomDate = value;
    });
  }

  late final _$loadLocalAsyncAction =
      AsyncAction('_BaseStore.loadLocal', context: context);

  @override
  Future<void> loadLocal() {
    return _$loadLocalAsyncAction.run(() => super.loadLocal());
  }

  late final _$_BaseStoreActionController =
      ActionController(name: '_BaseStore', context: context);

  @override
  void setSelectedPage(int page) {
    final _$actionInfo = _$_BaseStoreActionController.startAction(
        name: '_BaseStore.setSelectedPage');
    try {
      return super.setSelectedPage(page);
    } finally {
      _$_BaseStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setExpand(dynamic v) {
    final _$actionInfo =
        _$_BaseStoreActionController.startAction(name: '_BaseStore.setExpand');
    try {
      return super.setExpand(v);
    } finally {
      _$_BaseStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setShowContent(dynamic v) {
    final _$actionInfo = _$_BaseStoreActionController.startAction(
        name: '_BaseStore.setShowContent');
    try {
      return super.setShowContent(v);
    } finally {
      _$_BaseStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTheme(dynamic value) {
    final _$actionInfo =
        _$_BaseStoreActionController.startAction(name: '_BaseStore.setTheme');
    try {
      return super.setTheme(value);
    } finally {
      _$_BaseStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setNewDate(String value) {
    final _$actionInfo =
        _$_BaseStoreActionController.startAction(name: '_BaseStore.setNewDate');
    try {
      return super.setNewDate(value);
    } finally {
      _$_BaseStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addDate(String date) {
    final _$actionInfo =
        _$_BaseStoreActionController.startAction(name: '_BaseStore.addDate');
    try {
      return super.addDate(date);
    } finally {
      _$_BaseStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeDate(String value) {
    final _$actionInfo =
        _$_BaseStoreActionController.startAction(name: '_BaseStore.removeDate');
    try {
      return super.removeDate(value);
    } finally {
      _$_BaseStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void saveLocal() {
    final _$actionInfo =
        _$_BaseStoreActionController.startAction(name: '_BaseStore.saveLocal');
    try {
      return super.saveLocal();
    } finally {
      _$_BaseStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void generateRandom() {
    final _$actionInfo = _$_BaseStoreActionController.startAction(
        name: '_BaseStore.generateRandom');
    try {
      return super.generateRandom();
    } finally {
      _$_BaseStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedPage: ${selectedPage},
expand: ${expand},
showContent: ${showContent},
pageController: ${pageController},
themeDark: ${themeDark},
newDate: ${newDate},
newDateController: ${newDateController},
dates: ${dates},
randomDate: ${randomDate},
isNewDateValid: ${isNewDateValid}
    ''';
  }
}
