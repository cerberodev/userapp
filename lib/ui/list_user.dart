import 'package:flutter/material.dart';
import 'package:userapp/models/user.dart';
import 'package:userapp/repository/api.dart';
import 'package:userapp/ui/ui.dart';
import 'package:userapp/ui/widgets/widgets.dart';

class ListUser extends StatelessWidget {
  const ListUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getUsers(),
        builder: (context, AsyncSnapshot<List<User>> snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return UserWidget(
                  imageUrl: snapshot.data![index].avatar_url,
                  subtitle: snapshot.data![index].html_url,
                  title: snapshot.data![index].login,
                  trailing: snapshot.data![index].id,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<UserDetailPage>(
                        builder: (context) =>
                            UserDetailPage(user: snapshot.data![index]),
                      ),
                    );
                  },
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return const Center(child: CircularProgressIndicator());
        });
  }
}
