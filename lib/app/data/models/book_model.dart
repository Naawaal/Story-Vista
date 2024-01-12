class BookModel {
  String? id;
  String? title;
  String? author;
  String? description;
  String? image;
  String? price;
  int? year;
  int? pages;
  String? language;
  String? audioBook;
  String? category;
  String? aboutAuthor;
  String? bookUrl;
  String? audioLen;

  BookModel(
      {this.id,
      this.title,
      this.author,
      this.description,
      this.image,
      this.price,
      this.year,
      this.pages,
      this.language,
      this.audioBook,
      this.category,
      this.aboutAuthor,
      this.bookUrl,
      this.audioLen});

  BookModel.fromJson(Map<String, dynamic> json) {
    if (json["id"] is String) {
      id = json["id"];
    }
    if (json["title"] is String) {
      title = json["title"];
    }
    if (json["author"] is String) {
      author = json["author"];
    }
    if (json["description"] is String) {
      description = json["description"];
    }
    if (json["image"] is String) {
      image = json["image"];
    }

    if (json["price"] is String) {
      price = json["price"];
    }
    if (json["year"] is int) {
      year = json["year"];
    }
    if (json["pages"] is int) {
      pages = json["pages"];
    }
    if (json["language"] is String) {
      language = json["language"];
    }
    if (json["audioBook"] is String) {
      audioBook = json["audioBook"];
    }
    if (json["category"] is String) {
      category = json["category"];
    }
    if (json["aboutAuthor"] is String) {
      aboutAuthor = json["aboutAuthor"];
    }
    if (json["bookUrl"] is String) {
      bookUrl = json["bookUrl"];
    }
    if (json["audioLen"] is String) {
      audioLen = json["audioLen"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["title"] = title;
    data["author"] = author;
    data["description"] = description;
    data["image"] = image;
    data["price"] = price;
    data["year"] = year;
    data["pages"] = pages;
    data["language"] = language;
    data["audioBook"] = audioBook;
    data["category"] = category;
    data["aboutAuthor"] = aboutAuthor;
    data["bookUrl"] = bookUrl;
    data["audioLen"] = audioLen;
    return data;
  }
}
