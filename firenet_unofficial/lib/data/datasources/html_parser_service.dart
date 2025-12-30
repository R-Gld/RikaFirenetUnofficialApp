import 'package:html/parser.dart' as html_parser;
import '../models/stove.dart';
import '../../core/errors/exceptions.dart';

/// Service for parsing HTML responses from Rika Firenet
///
/// This service is responsible for parsing the stove discovery HTML
/// which is fragile and may break if Rika changes their website structure.
class HtmlParserService {
  /// Parses stove list from summary HTML
  ///
  /// Extracts stove IDs and names from the HTML structure:
  /// ```html
  /// <ul id="stoveList">
  ///   <li><a href="/web/stove/{id}">{name}</a></li>
  /// </ul>
  /// ```
  ///
  /// Returns empty list if no stoves are found.
  /// Throws [ParsingException] if HTML structure is invalid.
  List<Stove> parseStoveList(String htmlContent) {
    try {
      final document = html_parser.parse(htmlContent);
      final stoveList = document.getElementById('stoveList');

      if (stoveList == null) {
        throw const ParsingException('stoveList element not found');
      }

      final stoves = <Stove>[];
      final listItems = stoveList.querySelectorAll('li');

      for (final li in listItems) {
        final link = li.querySelector('a[href]');
        if (link != null) {
          final href = link.attributes['href'] ?? '';
          final id = _extractStoveId(href);
          final name = link.text.trim();

          if (id.isNotEmpty && name.isNotEmpty) {
            stoves.add(Stove(id: id, name: name));
          }
        }
      }

      return stoves;
    } catch (e) {
      if (e is ParsingException) {
        rethrow;
      }
      throw ParsingException('Failed to parse stove list', e);
    }
  }

  /// Extracts stove ID from href like "/web/stove/12345"
  ///
  /// Returns the last segment of the path which is the stove ID
  String _extractStoveId(String href) {
    final parts = href.split('/');
    return parts.isNotEmpty ? parts.last : '';
  }
}
