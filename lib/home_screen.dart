import 'package:flutter/material.dart';

/// MediaQuery

class HomeScreen extends StatelessWidget {
  final List<String> images = [
    "https://th.bing.com/th/id/R.c47e7b9f201535c0fd70a3f3b8d9483b?rik=7ccvpcYvXIs%2f7Q&pid=ImgRaw&r=0",
    "https://th.bing.com/th/id/R.c47e7b9f201535c0fd70a3f3b8d9483b?rik=7ccvpcYvXIs%2f7Q&pid=ImgRaw&r=0",
    "https://th.bing.com/th/id/R.c47e7b9f201535c0fd70a3f3b8d9483b?rik=7ccvpcYvXIs%2f7Q&pid=ImgRaw&r=0",
    "https://th.bing.com/th/id/R.c47e7b9f201535c0fd70a3f3b8d9483b?rik=7ccvpcYvXIs%2f7Q&pid=ImgRaw&r=0",
    "https://th.bing.com/th/id/R.c47e7b9f201535c0fd70a3f3b8d9483b?rik=7ccvpcYvXIs%2f7Q&pid=ImgRaw&r=0",
    "https://th.bing.com/th/id/R.c47e7b9f201535c0fd70a3f3b8d9483b?rik=7ccvpcYvXIs%2f7Q&pid=ImgRaw&r=0",
    "https://th.bing.com/th/id/R.c47e7b9f201535c0fd70a3f3b8d9483b?rik=7ccvpcYvXIs%2f7Q&pid=ImgRaw&r=0",
    "https://th.bing.com/th/id/R.c47e7b9f201535c0fd70a3f3b8d9483b?rik=7ccvpcYvXIs%2f7Q&pid=ImgRaw&r=0",
    "https://th.bing.com/th/id/R.c47e7b9f201535c0fd70a3f3b8d9483b?rik=7ccvpcYvXIs%2f7Q&pid=ImgRaw&r=0",
    "https://th.bing.com/th/id/R.c47e7b9f201535c0fd70a3f3b8d9483b?rik=7ccvpcYvXIs%2f7Q&pid=ImgRaw&r=0",
    "https://th.bing.com/th/id/R.c47e7b9f201535c0fd70a3f3b8d9483b?rik=7ccvpcYvXIs%2f7Q&pid=ImgRaw&r=0",
    "https://th.bing.com/th/id/R.c47e7b9f201535c0fd70a3f3b8d9483b?rik=7ccvpcYvXIs%2f7Q&pid=ImgRaw&r=0"
    // Add more image URLs here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Feed'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return buildImageFeed(orientation);
        },
      ),
    );
  }

  buildImageFeed(Orientation orientation) {
    if (orientation == Orientation.portrait) {
      return ListView.builder(
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Card(
            child: Container(
              height: 150,
              width: 150,
              child: Image.network(images[index]),
            ),
          );
        },
      );
    }
    else {
      return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Card(
            child:Container(
              height: 150,
              width: 150,
              child: Image.network(images[index]),
            ),
          );
        },
      );
    }
  }
}