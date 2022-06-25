import 'package:flutter/material.dart';

class UISearchBar {
  Widget buildSearchBar(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 8, right: 8, top: 15),
      width: MediaQuery.of(context).size.width,
      height: 130,
      color: Colors.black,
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/images/user_5.jpeg'),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    height: 46,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey.shade600),
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: TextField(
                      style: const TextStyle(color: Colors.white),
                      textAlign: TextAlign.start,
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        hintText: "What's on your mind?",
                        hintStyle: TextStyle(color: Colors.grey.shade600, fontSize: 18),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        const Icon(
                          Icons.video_call,
                          color: Colors.red,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          "Live",
                          style: TextStyle(color: Colors.grey.shade600),
                        ),
                      ],
                    ),
                  ),
                  const VerticalDivider(
                    color: Colors.white,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        const Icon(
                          Icons.image,
                          color: Colors.green,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          "Photo",
                          style: TextStyle(color: Colors.grey.shade600),
                        ),
                      ],
                    ),
                  ),
                  const VerticalDivider(
                    color: Colors.white,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: Colors.red,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          "Check in",
                          style: TextStyle(color: Colors.grey.shade600),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
