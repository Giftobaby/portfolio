// Created by: Christo Pananjickal, Created at: 28-04-2024 03:46 pm

import 'package:flutter/cupertino.dart';
import 'package:portfolio/models/api_models/api_response_model.dart';
import 'package:portfolio/models/api_models/status_enum.dart';
import 'package:portfolio/models/user_models/user_model.dart';
import 'package:portfolio/services/network/user_service.dart';

/// [UserInfoProvider] is the provider used to fetch and manage the state of user data API.
/// [userModel] is the model class for user data.
/// [status] indicates the status of calling the user data API.
/// [getUserInfo] is used to fetch the user data from the API.
/// [clearProvider] is used to clear the variables in the [UserInfoProvider].
class UserInfoProvider extends ChangeNotifier {
  UserModel? userModel;
  Status status = Status.none;
  String errorMessage = '';

  Future<void> getUserInfo() async {
    /// Avoid double calls to the API.
    if (status == Status.loading) return;

    status = Status.loading;
    errorMessage = '';
    userModel = null;
    notifyListeners();
    ApiResponseModel<UserModel> response = await UserService.getUserInfo();
    if (response.success) {
      userModel = response.data;
      status = Status.success;
    } else {
      errorMessage = response.message;
      status = Status.error;
    }
    notifyListeners();
  }

  void clearProvider() {
    userModel = null;
    errorMessage = '';
    status = Status.none;
  }
}
