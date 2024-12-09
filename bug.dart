```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response here
      final jsonData = jsonDecode(response.body);
      // Access data like this: jsonData['key']
    } else {
      // Handle error appropriately
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions
    print('Error fetching data: $e');
    // Consider rethrowing or using a custom error handling mechanism
    rethrow; // Re-throw to handle this error at a higher level
  }
}
```