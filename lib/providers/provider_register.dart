// Created by: Christo Pananjickal, Created at: 28-04-2024 04:02 pm

import 'package:portfolio/providers/user_info_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class ProviderRegister {
  static List<SingleChildWidget> providers = [ChangeNotifierProvider(create: (_) => UserInfoProvider())];
}
