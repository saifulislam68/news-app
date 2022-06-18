import 'package:flutter/material.dart';
import 'package:news_app/news_app.dart';

class DummyDetail extends StatelessWidget {
  const DummyDetail({Key? key, this.news}) : super(key: key);
  final News? news;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Details')),
        backgroundColor: Colors.deepPurple[200],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 270,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('${news?.imageUrl}'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(
                      color: Colors.grey,
                      width: 8,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                )
                // color: Colors.deepPurple,
                // height: 250,
                // width: double.infinity,
                // ignore: sort_child_properties_last
                // child: Image.network('${news?.imageUrl}'),
                ),
            Expanded(
                child: Center(
              child: Column(
                children: [
                  Text(
                    news?.title ?? '',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    news?.description ?? '',
                    style: const TextStyle(fontSize: 20),
                  )
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
