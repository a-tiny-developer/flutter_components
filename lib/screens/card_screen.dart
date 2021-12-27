import 'package:flutter/material.dart';

import '../theme/theme.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
        ],
      ),
    );
  }
}

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: const [
          ListTile(
            leading: Icon(
              Icons.photo_album_outlined,
              color: AppTheme.primary,
            ),
            title: Text('I am a title'),
            subtitle: Text(
                'Consectetur Lorem amet nisi mollit laboris do qui esse est commodo voluptate sit. Cupidatat culpa commodo et est nulla. Ipsum minim qui dolore dolor id culpa sit exercitation aliqua amet aliquip.'),
          ),
        ],
      ),
    );
  }
}
