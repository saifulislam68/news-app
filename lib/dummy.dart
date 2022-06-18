import 'package:flutter/material.dart';
import 'package:news_app/dummy_detail.dart';

class Dummy extends StatelessWidget {
  const Dummy({Key? key, this.title, this.imageUrl,this.description}) : super(key: key);
  final String? title;
  final String? imageUrl;
  final String? description;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() => Navigator.push(context, MaterialPageRoute(builder: ((context) => DummyDetail())))),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
            color: Colors.deepPurple,
            child: Image.network('$imageUrl'),height: 70,
            
            ),
          ),
          Expanded
          (child: Column(
            children: [
              Text(title!,style:TextStyle(fontWeight: FontWeight.bold),),
              Text(description!),
            ],
          )),
           
        ],
      ),
    );
  }
}