extension StringExt on String {
  String toTitleCase({String splitter = ' '}) {
    final sb = StringBuffer();
    final words = split(splitter);
    for (final word in words) {
      sb.write('${word[0].toUpperCase()}${word.substring(1)} ');
    }
    return sb.toString().trim();
  }
}
