class ChatMessageEntity {
  final String text;
  final String? imageUrl;
  final String id;
  final DateTime createdAt;
  final Author author;

  ChatMessageEntity(
      {required this.text,
      this.imageUrl,
      required this.id,
      required this.author,
      required this.createdAt});

  factory ChatMessageEntity.fromJson(Map<String, dynamic> json) {
    return ChatMessageEntity(text: json['text'], id: json['id'], author: Author.fromJson(json['author']), createdAt: DateTime.fromMillisecondsSinceEpoch(json['createdAt']));
  }
}

class Author {
  final String username;

  Author({required this.username});

  factory Author.fromJson(Map<String, dynamic> json) {
    return Author(username: json['username']);
  }
}
