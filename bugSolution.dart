```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>?> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      // Improved error handling 
      throw Exception('Failed to load data. Status code: ${response.statusCode} - ${response.reasonPhrase}');
    }
  } on FormatException catch (e) {
    print('Invalid JSON format: $e');
    return null; // Or handle this more explicitly
  } on Exception catch (e) {
    print('Error fetching data: $e');
    return null; // Or handle this more explicitly
  }
}
```