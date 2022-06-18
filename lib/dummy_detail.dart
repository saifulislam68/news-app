import 'package:flutter/material.dart';

class DummyDetail extends StatelessWidget {
  const DummyDetail({Key? key, this.title, this.imageUrl,this.description}) : super(key: key);
  final String? title;
  final String? imageUrl;
  final String? description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
          color: Colors.deepPurple,
          child: Image.network('$imageUrl'),height: 70,
          
          
          ),
        ),
        // Column(
        //   children: [
        //     Text(title!,),
        //     Text(description!),
        //   ],
        // ),

         
      ],
    );
  }
}