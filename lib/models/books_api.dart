import 'dart:convert';

import 'package:http/http.dart' as http;

class BooksApi {
  static String volumesBaseUrl = 'https://www.googleapis.com/books/v1/volumes';

  Future<List<dynamic>> getBooks() async {
    var url = Uri.parse('$volumesBaseUrl?q=harry&orderBy=newest&maxResults=20');
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var booksJson = jsonDecode(response.body);

      List<dynamic> items = booksJson['items'];

      return items;
    } else {
      print('Error ! errorCode: ${response.statusCode}');
      return [];
    }
  }

  Future<List<dynamic>> getBooksBySearch(String search) async {
    var url =
        Uri.parse('$volumesBaseUrl?q=$search&orderBy=relevance&maxResults=20');
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var booksJson = jsonDecode(response.body);

      List<dynamic> items = booksJson['items'];
      return items;
    } else {
      print('Error ! errorCode: ${response.statusCode}');
      return [];
    }
  }
}
