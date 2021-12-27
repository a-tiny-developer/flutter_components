import 'package:flutter/material.dart';

import '../theme/theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.photo_album_outlined,
            ),
            title: Text('I am a title'),
            subtitle: Text(
                'Consectetur Lorem amet nisi mollit laboris do qui esse est commodo voluptate sit. Cupidatat culpa commodo et est nulla. Ipsum minim qui dolore dolor id culpa sit exercitation aliqua amet aliquip.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Ok'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
