import 'package:acrhitecture_flutter/core/base/state/base_state.dart';
import 'package:acrhitecture_flutter/core/base/view/base_view_mobx.dart';
import 'package:acrhitecture_flutter/view/authenticate/login/viewmodel/login_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends BaseState<LoginView> {
  late LoginViewModel viewModel;
  @override
  Widget build(BuildContext context) {
    return BaseView<LoginViewModel>(
      viewModel: LoginViewModel(),
      onPageBuilder: (context, value) => Text("data"),
      onModelReady: (model) {
        viewModel = model;
      },
    );
  }

  Widget get scaffoldBody => Scaffold(
        body: numberText,
        floatingActionButton: floatingActionButtonIncrementNumber,
      );

  FloatingActionButton get floatingActionButtonIncrementNumber {
    return FloatingActionButton(
      onPressed: () => viewModel.incrementNumber(),
    );
  }

  Widget get numberText {
    return Observer(builder: (context) {
      return Text(
        viewModel.number.toString(),
      );
    });
  }
}
