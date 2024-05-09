// Created by: Christo Pananjickal, Created at: 28-04-2024 04:02 pm

import 'package:portfolio/providers/user_info_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

/// [ProviderRegister] is just a class to hold the list of providers used in the application.
/// Any function to be executed in common in all providers can be written here.
class ProviderRegister {
  static List<SingleChildWidget> providers = [ChangeNotifierProvider(create: (_) => UserInfoProvider())];
}
