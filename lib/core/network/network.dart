import 'dart:convert';
import 'package:http/http.dart' as http;

/// Network interface
abstract class Network {
  /// Get data from uri
  Future<String> get(Uri uri);
}

/// Network implementation
class NetworkImpl implements Network {
  final _client = http.Client();

  @override
  Future<String> get(Uri uri) async {
    final response = await _client.get(uri);
    return utf8.decode(response.bodyBytes);
  }
}
