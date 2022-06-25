import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UIPostsList {
  Widget buildPostsList(context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        buildPost(
          context: context,
          name: "User Two",
          userImage: "assets/images/user_2.jpeg",
          postedImages: ["assets/images/story_2.jpeg", "assets/images/story_4.jpeg"],
          description: "All the Lorem ipsom generators on the Internet tend to repeat predefined",
        ),
        buildPost(
          context: context,
          name: "User One",
          userImage: "assets/images/user_1.jpeg",
          postedImages: ["assets/images/story_1.jpeg", "assets/images/story_3.jpeg"],
          description: "All the Lorem ipsom generators on the Internet tend to repeat predefined",
        ),
        buildPost(
          context: context,
          name: "User Five",
          userImage: "assets/images/user_5.jpeg",
          postedImages: ["assets/images/story_5.jpeg", "assets/images/story_2.jpeg"],
          description: "All the Lorem ipsom generators on the Internet tend to repeat predefined",
        ),
      ],
    );
  }

  Widget buildPost(
      {required String name,
      required String userImage,
      required List<String> postedImages,
      required String description,
      required BuildContext context}) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.black,
      margin: const EdgeInsets.only(bottom: 5),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    image: DecorationImage(
                      image: AssetImage(userImage),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(color: Colors.grey.shade300, fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 3),
                    Text(
                      '1 hr ago',
                      style: TextStyle(color: Colors.grey.shade600, fontWeight: FontWeight.w500, fontSize: 15),
                    )
                  ],
                ),
                Expanded(child: Container()),
                IconButton(
                  onPressed: () {},
                  splashRadius: 25,
                  icon: Icon(
                    Icons.more_horiz_outlined,
                    color: Colors.grey.shade600,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
            child: Text(
              description,
              style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 250,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              itemCount: postedImages.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, index) {
                return SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Image.asset(
                    postedImages[index],
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 50,
                      child: Stack(
                        children: [
                          Positioned(
                            child: Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(60),
                                border: Border.all(width: 1, color: Colors.white),
                              ),
                              child: const Icon(
                                Icons.thumb_up,
                                color: Colors.white,
                                size: 12,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 20,
                            child: Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(60),
                                border: Border.all(width: 1, color: Colors.white),
                              ),
                              child: const Icon(
                                CupertinoIcons.heart_fill,
                                color: Colors.white,
                                size: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      '2.5k',
                      style: TextStyle(color: Colors.grey.shade600),
                    ),
                  ],
                ),
                Text(
                  '400 comments',
                  style: TextStyle(color: Colors.grey.shade600),
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
