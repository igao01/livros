import 'package:books/models/books_api.dart';
import 'package:books/viewmodel/book_vm.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> titleBooks = [
      'Book 1',
      'Book 2',
      'Book 3',
      'Book 4',
      'Book 5'
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Livros'),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height - 80,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child: TextField()),
                IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              ],
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (ctx, index) => Text(titleBooks[index])),
            ),
          ],
        ),
      ),
    );
  }
}
