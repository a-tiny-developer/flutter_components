// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../router/router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Flutter Components'),
      ),
      body: ListView.separated(
        itemCount: AppRoutes.menuOptions.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(
              AppRoutes.menuOptions[index].icon,
            ),
            title: Text(
              AppRoutes.menuOptions[index].name,
            ),
            onTap: () {
              // final route = MaterialPageRoute(
              //   builder: (context) {
              //     return const ListView1Screen();
              //   },
              // );
              // Navigator.push(context, route);
              Navigator.pushNamed(
                context,
                AppRoutes.menuOptions[index].route,
              );
            },
          );
        },
        separatorBuilder: (context, index) {
          return const Divider();
        },
      ),
    );
  }
}
