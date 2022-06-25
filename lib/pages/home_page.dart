import 'package:flutter/material.dart';
import 'package:pdpui_facebook/pages/widgets/posts_list.dart';
import 'package:pdpui_facebook/pages/widgets/search_bar.dart';
import 'package:pdpui_facebook/pages/widgets/users_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with UISearchBar, UIUsersList, UIPostsList {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            splashRadius: 25,
            icon: Icon(
              Icons.search,
              color: Colors.grey.shade500,
              size: 24,
            ),
          ),
          IconButton(
            onPressed: () {},
            splashRadius: 25,
            icon: Icon(
              Icons.camera_alt,
              color: Colors.grey.shade500,
              size: 24,
            ),
          ),
        ],
        title: const Text(
          "facebook",
          style: TextStyle(
            color: Colors.blueAccent,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: [
          buildSearchBar(context),
          const SizedBox(height: 10),
          buildUsersList(context),
          const SizedBox(height: 10),
          buildPostsList(context),
        ],
      ),
    );
  }
}
