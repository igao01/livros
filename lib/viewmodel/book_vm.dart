import 'package:books/models/book.dart';
import 'package:books/models/books_api.dart';
import 'package:flutter/material.dart';

class BookVM {
  void getBook() async {
    List<Book> books = [];
    List<dynamic> items = [];

    items = await BooksApi().getBooks() as List<dynamic>;

    print(' BOOKS TO CONVERT ${items[0].toString()}');

    books = items.map((jsonBook) {
      Book book = Book.fromJSON(jsonBook);
      return book;
    }).toList();

    print('CONVERTED BOOKS ${books[0].title.toString()}');

    //return books;
  }
}

class BookProvider with ChangeNotifier {
  List<Book> _books = [];

  List<Book> get books => [..._books];

  void getBooks() async {
    List<Book> books = [];
    List<dynamic> items = [];

    items = await BooksApi().getBooks() as List<Map<String, dynamic>>;

    print('BOOKS TO CONVERT ${items[0].toString()}');

    items.map((jsonBook) {
      books.add(Book.fromJSON(jsonBook));
      print('AAAAAAAAAA ${jsonBook.toString()}');
    });

    print('CONVERTED BOOKS ${books[0].toString()}');

    notifyListeners();
  }
}
