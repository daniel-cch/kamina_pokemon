class UrlUtils {
  const UrlUtils._();

  static int? extractNumberFromUrl(String url) {
    final regex = RegExp(r'/(\d+)/?$');
    final match = regex.firstMatch(url);
    if (match != null && match.groupCount > 0) {
      return int.tryParse(match.group(1)!);
    }

    return null;
  }
}
