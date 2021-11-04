import 'package:flutter/material.dart';
import 'package:userapp/models/user.dart';
import 'package:userapp/ui/widgets/widgets.dart';

class UserDetailPage extends StatelessWidget {
  const UserDetailPage({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.login),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CardImageText(
                image: user.avatar_url,
                text: user.login,
              ),
              const SizedBox(height: 10),
              CardIdUser(
                text: user.id.toString(),
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<WebViewPage>(
                      builder: (context) => WebViewPage(text: user.login),
                    ),
                  );
                },
                style: ButtonStyle(
                  alignment: Alignment.center,
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all(
                    Colors.red[300],
                  ),
                ),
                autofocus: true,
                child: Text(
                  'Go to Github page of ${user.login}',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 10),
              RaisedButton(
                // TODO: THIS EXAMPLE OF WIDGET DEPRECATED
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Go back'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
