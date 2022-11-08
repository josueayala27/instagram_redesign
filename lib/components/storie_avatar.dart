import 'package:flutter/material.dart';

class StorieAvatar extends StatelessWidget {
  final String username;
  final String url;
  final int index;
  final int total;

  const StorieAvatar(
      {super.key,
      required this.username,
      required this.url,
      required this.total,
      required this.index});

  String truncate(String text, {length = 7, omission = '...'}) {
    if (length >= text.length) {
      return text;
    }
    return text.replaceRange(length, text.length, omission);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: index == 0 ? 20 : 0, right: index + 1 == total ? 20 : 10),
      child: Column(
        children: [
          Expanded(
              child: AspectRatio(
            aspectRatio: 1 / 1,
            child: Container(
              margin: const EdgeInsets.only(),
              child: CircleAvatar(
                backgroundColor: Colors.blueGrey[50],
                backgroundImage: NetworkImage(url),
              ),
            ),
          )),
          const SizedBox(
            height: 5,
          ),
          Text(
            truncate(username, length: 9),
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 13),
          )
        ],
      ),
    );
  }
}
