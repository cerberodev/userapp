import 'package:flutter/material.dart';
import 'package:userapp/l10n/l10n.dart';
import 'package:userapp/ui/ui.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.appTitle),
      ),
      body: const Center(
        child: ListUser(),
      ),
    );
  }
}
