import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final imagesIds = List.generate(10, (index) => 1 + index);
  final scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      // print(
      //     '${scrollController.position.pixels} ${scrollController.position.maxScrollExtent}');
      if (scrollController.position.pixels + 500 >=
          scrollController.position.maxScrollExtent) {
        // add5();
        fetchData();
      }
    });
  }

  Future<void> fetchData() async {
    if (isLoading) return;
    isLoading = true;
    await Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        add5();
      });
    });
    isLoading = false;
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
        child: Stack(
          children: [
            ListView.builder(
              physics: const BouncingScrollPhysics(),
              controller: scrollController,
              itemCount: imagesIds.length,
              itemBuilder: (context, index) {
                return FadeInImage(
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                  placeholder:
                      const AssetImage('assets/images/jar-loading.gif'),
                  image: NetworkImage(
                    'https://picsum.photos/500/300?image=${imagesIds[index]}',
                  ),
                );
              },
            ),
            Positioned(
              width: 60,
              bottom: 40,
              left: MediaQuery.of(context).size.width * 0.5 - 30,
              child: const LoadingIcon(),
            ),
          ],
        ),
      ),
    );
  }
}

class LoadingIcon extends StatelessWidget {
  const LoadingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        shape: BoxShape.circle,
      ),
      child: const CircularProgressIndicator(
        color: AppTheme.primary,
      ),
    );
  }
}
