// Created by: Christo Pananjickal, Created at: 28-04-2024 03:48 pm

/// [Status] is an enum which represents the possible status of any operation, especially for
/// a [Future] asynchronous operation.
/// [none] indicates the operation has not started.
/// [loading] indicates the operation is ongoing.
/// [success] indicates the operation was complete and successful.
/// [error] indicates the operation was completed but failed.
enum Status {
  none,
  loading,
  success,
  error;
}
