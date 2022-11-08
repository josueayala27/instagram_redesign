import 'package:flutter/material.dart';
import 'package:instagram_redesign/components/storie_avatar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Map<String, dynamic>> stories = const [
    {
      "id": 1,
      "username": "josue_ayala27",
      "image":
          "https://www.playtoearn.online/wp-content/uploads/2021/10/Clone-X-NFT-avatar.png"
    },
    {
      "id": 1,
      "username": "uidesign3r",
      "image":
          "https://www.playtoearn.online/wp-content/uploads/2021/10/deadfellaz-avatar-icon.png"
    },
    {
      "id": 2,
      "username": "lazyinterface",
      "image":
          "https://www.bengbenggaming.com/wp-content/uploads/2022/03/NFT-Avatar-1.jpg"
    },
    {
      "id": 3,
      "username": "dentdifa",
      "image": "https://www.ultcube88.com/wp-content/uploads/2021/08/cat.jpg"
    },
    {
      "id": 4,
      "username": "arar__malik",
      "image":
          "https://thumbor.forbes.com/thumbor/960x0/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F613df8e8d679a21b766a1636%2Fbigbun-2%2F960x0.jpg%3Ffit%3Dscale"
    },
    {
      "id": 5,
      "username": "eyo.dev",
      "image":
          "https://i.pinimg.com/564x/d6/a6/0d/d6a60d0a872a23565e4b640cf06ddf01.jpg"
    },
    {
      "id": 6,
      "username": "cloud_infotech_uiux",
      "image": "https://www.ultcube88.com/wp-content/uploads/2021/08/cat.jpg"
    },
    {
      "id": 7,
      "username": "2pxstroke",
      "image":
          "https://cdn-612d39b2c1ac189e9851cc81.closte.com/wp-content/uploads/2022/01/Cats-Corporation-3.jpg"
    },
    {
      "id": 8,
      "username": "ui_umar",
      "image": "https://pbs.twimg.com/media/FIw0iNhXwAQkxKh.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Instagram",
                style: TextStyle(color: Colors.black),
              ),
              Row(
                children: const [
                  Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.favorite_border,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.inbox,
                    color: Colors.black,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          SizedBox(
            height: 90,
            child: ListView.builder(
              itemCount: stories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return StorieAvatar(
                  total: stories.length,
                  index: index,
                  username: stories[index]["username"],
                  url: stories[index]["image"],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
