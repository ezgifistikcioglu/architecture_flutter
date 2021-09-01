import 'package:mobx/mobx.dart';
part 'login_view_model.g.dart';

class LoginViewModel = _LoginViewModelBase with _$LoginViewModel;

abstract class _LoginViewModelBase with Store {
  @observable
  int number = 1;

  @computed
  bool get isEven => number % 2 == 0;
  
  @action
  void incrementNumber() {
    number++;
  }
}
