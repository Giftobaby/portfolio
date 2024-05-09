// Created by: Christo Pananjickal, Created at: 28-04-2024 12:36 pm

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:portfolio/models/api_models/api_response_model.dart';
import 'package:http/http.dart' as http;
import 'package:portfolio/models/user_models/user_model.dart';
import 'package:portfolio/services/network/endpoints.dart';

/// [UserService] is responsible for handling all network calls related to user.
class UserService {
  /// [getUserInfo] is responsible for fetching the user info from API.
  static Future<ApiResponseModel<UserModel>> getUserInfo() async {
    /// [httpResponse] is the response model of [http.get] method.
    http.Response? httpResponse;

    /// [responseModel] is the response model for [getUserInfo] function.
    ApiResponseModel<UserModel> responseModel = ApiResponseModel<UserModel>(data: null, message: '', success: false);

    try {
      /// Get user info through API.
      httpResponse =
          await ((kDebugMode ? _loadLocalFile() : http.get(Endpoints.userInfo))).timeout(const Duration(seconds: 7));

      /// Http call was successful if the status code starts with '2'.
      if (httpResponse.statusCode.toString().startsWith('2')) {
        responseModel.data = _parseUserData(httpResponse.body);

        /// Http call was successful, but parsing user data from json failed.
        if (responseModel.data == null) {
          responseModel.success = false;
          responseModel.message = 'Failed to parse user data.';

          return responseModel;
        }

        /// Http call was successful and user data parsed successfully.
        responseModel.success = true;
        responseModel.message = 'User data fetched successfully';

        return responseModel;
      }

      /// Status code of http call didn't start with '2', which means the server returned an error.
      throw Exception();
    } catch (e) {
      /// Handle all the errors.
      String statusCode = httpResponse?.statusCode == null ? '' : ' Status code ${httpResponse!.statusCode}.';
      responseModel.message =
          e is TimeoutException ? 'Your connection has timeout.' : 'Failed to get user info.$statusCode';
      responseModel.success = false;
      responseModel.data = null;

      return responseModel;
    }
  }

  /// [_parseUserData] parses the [json] and returns a [UserModel] if the data is parsed successfully.
  static UserModel? _parseUserData(String json) {
    try {
      UserModel userModel = UserModel.fromJson(jsonDecode(json));
      return userModel;
    } catch (_) {
      return null;
    }
  }

  /// [_loadLocalFile] is used to load the local json file. This is done to update the json file locally
  /// while development to make development faster. Later once the json file is all complete it can be pushed
  /// to server and in production it will be fetched from server.
  static Future<http.Response> _loadLocalFile() async {
    final file = File('E:/portfolio/files/info.json');
    try {
      /// mock network delay
      await Future.delayed(const Duration(seconds: 1));
      String fileContent = await file.readAsString();
      return http.Response(fileContent, 200);
    } catch (e) {
      return http.Response('', 400);
    }
  }
}
