import 'package:flutter/material.dart';
import 'package:news_app/news_app.dart';

class DummyDetail extends StatelessWidget {
  const DummyDetail({Key? key,this.news}) : super(key: key);
  final News? news;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text('Details')),
      body: SafeArea(
        child: Column(
          children: 
              [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                    color: Colors.deepPurple,height: 70,
                    child:  Image.network('${news?.imageUrl}'),
                    
                    ),
                  ),
                  Expanded
                  (child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(news?.title ?? '',style: const TextStyle(fontWeight: FontWeight.bold),),
                      Text(news?.description ?? '')
                    ],
                  )),
                   
                ],
              ),
            ],
        ),
      ),
    );
  }
}