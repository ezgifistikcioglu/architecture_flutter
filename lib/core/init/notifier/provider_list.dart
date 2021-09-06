import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'theme_notifier.dart';

class ApplicationProvider {
  static ApplicationProvider? _applicationProviderInstance;
  static ApplicationProvider get applicationProviderInstance {
    _applicationProviderInstance ??= _applicationProviderInstance = ApplicationProvider._init();
    return _applicationProviderInstance!;
  }

  ApplicationProvider._init();

  List<SingleChildWidget> dependItems = [
    ChangeNotifierProvider(
      create: (context) => ThemeNotifier(),
    ),
  ];
  List<SingleChildWidget> uiChangesItems = [];
  List<SingleChildWidget> singleItems = [];
}