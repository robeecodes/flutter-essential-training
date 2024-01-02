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
}

class Author {
  final String username;

  Author({required this.username});
}
