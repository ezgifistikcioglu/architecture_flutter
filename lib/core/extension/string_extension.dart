import 'package:easy_localization/easy_localization.dart';

extension StringLocalization on String {
  ///It makes localization for us

  String get locale => this.tr();
}