import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final String username;
  final String src;

  const Post({super.key, required this.username, required this.src});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.blueGrey[50],
                      backgroundImage: NetworkImage(src),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      username,
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                const Icon(Icons.more_horiz)
              ],
            )
          ]),
        ),
        AspectRatio(
          aspectRatio: 1 / 1,
          child: Container(
            decoration: BoxDecoration(color: Colors.blueGrey[50]),
            child: Image(fit: BoxFit.contain, image: NetworkImage(src)),
          ),
        ),
        Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.favorite_border),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.chat_bubble_outline),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    const Icon(Icons.bookmark_outline)
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                RichText(
                    text: const TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        children: [
                      TextSpan(text: "Liked by "),
                      TextSpan(
                          text: "josueayala27",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          )),
                      TextSpan(text: " and 4,523 others")
                    ])),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "View 12 coments",
                  style: TextStyle(color: Colors.blueGrey),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text("I feel like my own cloud")
              ],
            ))
      ],
    );
  }
}
