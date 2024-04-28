// Created by: Christo Pananjickal, Created at: 28-04-2024 12:38 pm

/// [ApiResponseModel] is a common model class for any network calls.
/// [data] is the data returned from the api call, which can be null if the api call fails.
/// [message] is the message regarding the status of api call.
/// [success] indicates the status of api call. true if successful and false if the api failed.
class ApiResponseModel<T> {
  T? data;
  String message;
  bool success;

  ApiResponseModel({required this.data, required this.message, required this.success});
}
