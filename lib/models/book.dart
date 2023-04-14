class Book {
  String id;
  String title;
  List<dynamic> authors;
  String description;
  List<dynamic> categories;
  String smallThumbnail;
  //double amount;
  //String buyLink;

  Book({
    required this.id,
    required this.title,
    required this.authors,
    required this.description,
    required this.categories,
    required this.smallThumbnail,
    //required this.amount,
    //required this.buyLink,
  });

   // Método fromJSON
  factory Book.fromJSON(Map<String, dynamic> json) {
    return Book(
      id: json['id'],
      title: json['volumeInfo']['title'] ?? '',
      authors: json['volumeInfo']['authors'] ?? [],
      description: json['volumeInfo']['description'] ?? '',
      categories: json['volumeInfo']['categories'] ?? [],
      smallThumbnail: json['volumeInfo']['smallThumbnail'] ?? '',
      //amount: json['saleInfo']['listPrice']['amount'] ?? 99999.99,
      //buyLink: json['saleInfo']['buyLink'] ?? '',
    );
  }
}



