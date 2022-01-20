import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final imagesIds = List.generate(10, (index) => 1 + index);
  final scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      print(
          '${scrollController.position.pixels} ${scrollController.position.maxScrollExtent}');
      if (scrollController.position.pixels + 500 >=
          scrollController.position.maxScrollExtent) {
        add5();
      }
    });
  }

  void add5() {
    final lastId = imagesIds.last;
    setState(() {
      imagesIds.addAll(
        List.generate(5, (index) => 1 + index).map((e) => lastId + e),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          controller: scrollController,
          itemCount: imagesIds.length,
          itemBuilder: (context, index) {
            return FadeInImage(
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
              placeholder: const AssetImage('assets/images/jar-loading.gif'),
              image: NetworkImage(
                'https://picsum.photos/500/300?image=${imagesIds[index]}',
              ),
            );
          },
        ),
      ),
    );
  }
}
