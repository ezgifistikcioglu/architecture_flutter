import 'package:acrhitecture_flutter/core/base/view/base_view_mobx.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';


import '../../../../core/base/state/base_state.dart';
import '../../../../core/extension/string_extension.dart';
import '../../../../core/init/lang/language_manager.dart';
import '../../../../core/init/lang/locale_keys.g.dart';
import '../viewmodel/test_view_model.dart';

class TestsView extends StatefulWidget {
  @override
  _TestsViewState createState() => _TestsViewState();
}

class _TestsViewState extends BaseState<TestsView> {
  late TestViewModel viewModel;
  @override
  Widget build(BuildContext context) {
    return BaseView<TestViewModel>(
      viewModel: TestViewModel(),
      onModelReady: (model) {
        viewModel = model;
      },
      onPageBuilder: (context, value) => scaffoldBody,
    );
  }

  Widget get scaffoldBody => Scaffold(
        appBar: AppBar(
          leading: textHelloWorldWidget(),
          title: textWelcomeWidget(),
          actions: [iconButtonChangeTheme()],
        ),
        floatingActionButton: floatingActionButtonNumberIncrement,
        body: textNumber,
      );

  Text textWelcomeWidget() => Text(LocaleKeys.welcome.locale);
  Text textHelloWorldWidget() => Text(LocaleKeys.hello_world.locale);

  IconButton iconButtonChangeTheme() {
    return IconButton(
        icon: Icon(Icons.language),
        onPressed: () {
          context.setLocale(LanguageManager.languageManagerInstance.enLocale);
        });
  }

  FloatingActionButton get floatingActionButtonNumberIncrement {
    return FloatingActionButton(
      onPressed: () => viewModel.incrementNumber(),
    );
  }

  Widget get textNumber {
    return Observer(
      builder: (context) => Center(
        child: Text(
          viewModel.number.toString(),
        ),
      ),
    );
  }
}