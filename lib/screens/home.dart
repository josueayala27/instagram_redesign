import 'package:flutter/material.dart';
import 'package:instagram_redesign/components/post.dart';
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

  final List<Map<String, dynamic>> posts = const [
    {
      "id": 1,
      "username": "uxbykusu",
      "src":
          "https://instagram.fsal1-1.fna.fbcdn.net/v/t51.2885-15/306379509_609791147400799_1193560104918787575_n.jpg?stp=dst-jpg_e35&_nc_ht=instagram.fsal1-1.fna.fbcdn.net&_nc_cat=107&_nc_ohc=SY_iVNoe1M0AX-Vgimy&tn=9_ihsYuMSALpCVLc&edm=ALQROFkBAAAA&ccb=7-5&ig_cache_key=MjkyNTYzMzgyOTg1MTc1OTIzNQ%3D%3D.2-ccb7-5&oh=00_AfBZjMk8DOqj3J9KrXdpoyl-NDsWzXklc_AUk_a5WDg01g&oe=636F245A&_nc_sid=30a2ef"
    },
    {
      "id": 1,
      "username": "itsasim._",
      "src":
          "https://instagram.fsal5-1.fna.fbcdn.net/v/t51.2885-15/313847842_650789573155876_4515673785419746625_n.webp?stp=dst-jpg_e35&_nc_ht=instagram.fsal5-1.fna.fbcdn.net&_nc_cat=104&_nc_ohc=ZIjvqEE2lK4AX_81MtZ&edm=ALQROFkBAAAA&ccb=7-5&ig_cache_key=Mjk2MjUwMjI3Mzg2MDM2MjE0Mw%3D%3D.2-ccb7-5&oh=00_AfAINB9iSwdunPOBmd7GDsvMFUOnos-XJ-QTX3BmBmxYIg&oe=636DEB05&_nc_sid=30a2ef"
    },
    {
      "id": 1,
      "username": "ui.dalle",
      "src":
          "https://instagram.fsal5-1.fna.fbcdn.net/v/t51.2885-15/314552595_473075384887882_128049826179400345_n.webp?stp=dst-jpg_e35&_nc_ht=instagram.fsal5-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=eW_obxFH3gMAX9NWJF4&edm=ALQROFkBAAAA&ccb=7-5&ig_cache_key=Mjk2NjExODQyNDYxNzM3MzEyNA%3D%3D.2-ccb7-5&oh=00_AfCEDi03Fo748ZkiQqsp3xfafV7E3ibScdOU-EnCXCS-sg&oe=636DE3A1&_nc_sid=30a2ef"
    },
    {
      "id": 1,
      "username": "ui.huzaifa",
      "src":
          "https://instagram.fsal5-1.fna.fbcdn.net/v/t51.2885-15/311799658_213791414317268_3054623087554470986_n.webp?stp=dst-jpg_e35_p720x720&_nc_ht=instagram.fsal5-1.fna.fbcdn.net&_nc_cat=108&_nc_ohc=hgs2acK7NWYAX8vZR8u&tn=9_ihsYuMSALpCVLc&edm=ALQROFkBAAAA&ccb=7-5&ig_cache_key=Mjk0OTkzOTQyOTY3MjQ5MTc0MA%3D%3D.2-ccb7-5&oh=00_AfDm7cxILvDw2X19_pYUA8yrxc4-558TKrN16iq6wYDkZg&oe=636F9A38&_nc_sid=30a2ef"
    },
    {
      "id": 1,
      "username": "shariff_saeed",
      "src":
          "https://instagram.fsal1-1.fna.fbcdn.net/v/t51.2885-15/314383007_827896915089229_7322172893217230001_n.webp?stp=dst-jpg_e35_p720x720&_nc_ht=instagram.fsal1-1.fna.fbcdn.net&_nc_cat=101&_nc_ohc=yvGJEDEGyE8AX_ecTzo&edm=ALQROFkBAAAA&ccb=7-5&ig_cache_key=Mjk2NDk0NDAyNjY0NDQ2Nzk1OA%3D%3D.2-ccb7-5&oh=00_AfCep-b9z02Km8N7RR5VEFmE8Hek4jVM-uvzQ3d0O_YlJA&oe=636F87BC&_nc_sid=30a2ef"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
          ),
          const SizedBox(
            height: 20,
          ),
          ListView.builder(
            primary: false,
            shrinkWrap: true,
            itemCount: posts.length,
            itemBuilder: (context, index) {
              return Post(
                src: posts[index]["src"],
                username: posts[index]["username"],
              );
            },
          )
        ],
      ),
    );
  }
}
