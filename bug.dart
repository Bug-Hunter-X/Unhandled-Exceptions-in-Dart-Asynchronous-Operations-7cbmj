```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonData = jsonDecode(response.body);
      // Access data like this, assuming jsonData is a Map:
      print('Data: ${jsonData['key'] ?? 'Key not found'}');
    } else {
      // Handle non-200 status codes
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions during the API call or JSON decoding
    print('Error: $e');
    rethrow; // Re-throw the error to be handled by the caller
  }
}
```