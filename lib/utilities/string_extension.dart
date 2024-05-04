extension StringExt on String {
  String toTitleCase({String splitter = ' '}) {
    String titleCaseString = '';
    final words = split(splitter);
    for (final word in words) {
      titleCaseString += '${word[0].toUpperCase()}${word.substring(1)} ';
    }
    return titleCaseString.trim();
  }
}
