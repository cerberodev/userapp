import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserWidget extends StatelessWidget {
  UserWidget({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    this.trailing,
    this.onTap,
    Key? key,
  }) : super(key: key);

  String imageUrl;
  String title;
  String subtitle;
  int? trailing;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 5,
      child: ListTile(
        leading: Image.network(imageUrl),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Text(trailing!.toString()),
        onTap: onTap,
      ),
    );
  }
}
