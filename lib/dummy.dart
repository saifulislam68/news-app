import 'package:flutter/material.dart';

class Dummy extends StatelessWidget {
  const Dummy(
      {Key? key, this.title, this.imageUrl, this.description, this.onTap})
      : super(key: key);
  final String? title;
  final String? imageUrl;
  final String? description;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.deepPurple,
              // ignore: sort_child_properties_last
              child: Image.network('$imageUrl'),
              height: 70,
            ),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title!,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(description!),
            ],
          )),
        ],
      ),
    );
  }
}
