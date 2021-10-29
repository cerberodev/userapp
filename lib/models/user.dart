// ignore_for_file: non_constant_identifier_names

class User {
  User({
    required this.login,
    required this.id,
    required this.avatar_url,
    required this.html_url,
  });
  String login;
  int id;
  String avatar_url;
  String html_url;
}
