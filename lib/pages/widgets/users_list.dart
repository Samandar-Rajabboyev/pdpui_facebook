import 'package:flutter/material.dart';

class UIUsersList {
  Widget buildUsersList(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width,
      height: 230,
      color: Colors.black,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          buildUserCard(
              name: "User Five", userImage: "assets/images/user_5.jpeg", bgImage: "assets/images/story_5.jpeg"),
          buildUserCard(
              name: "User Four", userImage: "assets/images/user_4.jpeg", bgImage: "assets/images/story_4.jpeg"),
          buildUserCard(
              name: "User Three", userImage: "assets/images/user_3.jpeg", bgImage: "assets/images/story_3.jpeg"),
          buildUserCard(
              name: "User Two", userImage: "assets/images/user_2.jpeg", bgImage: "assets/images/story_2.jpeg"),
          buildUserCard(
              name: "User One", userImage: "assets/images/user_1.jpeg", bgImage: "assets/images/story_1.jpeg"),
        ],
      ),
    );
  }

  Widget buildUserCard({required String name, required String userImage, required String bgImage}) {
    return Container(
      height: 200,
      width: 130,
      margin: const EdgeInsets.only(right: 13),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(image: AssetImage(bgImage), fit: BoxFit.cover),
      ),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: const LinearGradient(
            end: Alignment.bottomLeft,
            colors: [
              Colors.transparent,
              Colors.black45,
              Colors.black,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                border: Border.all(width: 2, color: Colors.blueAccent),
                image: DecorationImage(
                  image: AssetImage(userImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(child: Container()),
            Text(
              name,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
