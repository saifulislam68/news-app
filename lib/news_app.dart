import 'package:flutter/material.dart';
import 'package:news_app/dummy.dart';
import 'package:news_app/dummy_data.dart';
import 'package:news_app/dummy_detail.dart';

class NewsApp extends StatefulWidget {
  const NewsApp({Key? key}) : super(key: key);

  @override
  State<NewsApp> createState() => _NewsAppState();
}

class _NewsAppState extends State<NewsApp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('News App'),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))
          ],
          centerTitle: true,
          // backgroundColor: Colors.deepPurple[200],
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.deepPurple, Colors.red],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft),
            ),
          ),
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.star),
                text: 'Popular',
              ),
              Tab(
                icon: Icon(Icons.person),
                text: 'Profile',
              ),
              Tab(
                icon: Icon(Icons.settings),
                text: 'Settings',
              ),
            ],
          ),
        ),
        body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: posts.length,
          itemBuilder: (BuildContext context, int index) {
            return Dummy(
              title: posts[index].title,
              imageUrl: posts[index].imageUrl,
              description: posts[index].description,
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return DummyDetail(news: posts[index]);
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class News {
  String? title;
  String? description;
  String? imageUrl;

  News({this.title, this.description, this.imageUrl});
}
