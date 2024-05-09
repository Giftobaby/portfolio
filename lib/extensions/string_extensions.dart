// Created by: Christo Pananjickal, Created at: 24-04-2024 03:17 pm

/// [StringExtension] is an extension for [String]. This is a handy method to apply functions on [String] data-types.
extension StringExtension on String {
  String toFirstLetterUpperCase() {
    if (isEmpty) return this;

    return substring(0, 1).toUpperCase() + (length < 2 ? '' : substring(1, length));
  }
}
