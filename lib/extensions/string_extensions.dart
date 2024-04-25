// Created by: Christo Pananjickal, Created at: 24-04-2024 03:17 pm

extension StringExtension on String {
  String toFirstLetterUpperCase() {
    if (isEmpty) return this;

    return substring(0, 1).toUpperCase() + (length < 2 ? '' : substring(1, length));
  }

  String toPascalCaseWithSpaces() {
    final words = split(' ');
    final capitalizedWords = words.map((word) {
      return word.isNotEmpty ? word[0].toUpperCase() + word.substring(1) : '';
    });

    return capitalizedWords.join(' ');
  }
}
