```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>?> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      return jsonData;
    } else {
      print('Error: HTTP status code ${response.statusCode}');
      return null; // Or throw an exception: throw Exception('HTTP error'); 
    }
  } catch (e) {
    print('Error: $e');
    return null; // Or rethrow: rethrow;
  }
}

void main() async {
  final data = await fetchData();
  if (data != null) {
    print('Data: ${data['key'] ?? 'Key not found'}');
  } else {
    print('Failed to fetch data.');
  }
}
```