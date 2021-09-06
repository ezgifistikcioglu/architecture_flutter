import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';

part 'test_view_model.g.dart';

class TestViewModel = _TestViewModelBase with _$TestViewModel;

abstract class _TestViewModelBase with Store {
  late BuildContext context;

  void setContext(BuildContext context) {
    this.context = context;
  }

  @observable
  bool isLoading = false;

  @observable
  int number = 0;

  @computed
  bool get isEven => number % 2 == 0;

  @action
  void incrementNumber() {
    number++;
  }
}