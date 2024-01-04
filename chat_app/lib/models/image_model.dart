import '../utils/env.dart';

class UnsplashImage {
  static String apiAccess = Env.unsplashAccess;
  static String apiSecret = Env.unsplashSecret;
  static String appID = Env.unsplashID;

  // image json data
  String id;
  String slug;
  String? description;
  String? altText;
  Map<String, dynamic> urls;
  Map<String, dynamic> links;
  User user;

  UnsplashImage(
      {required this.id,
      required this.slug,
      required this.description,
      required this.altText,
      required this.urls,
      required this.links,
      required this.user});

  factory UnsplashImage.fromJson(Map<String, dynamic> json) {
    return UnsplashImage(
        id: json['id'],
        slug: json['slug'],
        description: json['description'],
        altText: json['alt_description'],
        urls: json['urls'],
        links: json['links'],
        user: User.fromJson(json['user']));
  }

  getTitle() {
    return slug
        .replaceAll(RegExp('-$id'), '')
        .replaceAll(RegExp('-'), ' ')
        .split(' ')
        .map((e) => e[0].toUpperCase() + e.substring(1))
        .join(' ');
  }
}

class User {
  String name;
  String url;

  User({required this.name, required this.url});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        name: json['name'],
        url: json['links']['html']);
  }
}
