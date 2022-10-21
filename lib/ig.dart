
import 'package:flutter/material.dart';

class IGPage extends StatelessWidget {
  const IGPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: boxHeaderTitle(context),
        actions: [boxHeaderActions(context)],
      ),
      body: SingleChildScrollView(

        child: Column(
          children: [
            const SizedBox(height: 20),
            boxStory(context),

            const SizedBox(width: 20),
            boxNewFeeds(context),
          ],

        ),
      ),
    );
  }

  boxHeaderTitle(BuildContext context) {
    return const Text(
      "Instagram",
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
    );
  }

  boxHeaderActions(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.add_box_outlined,
          size: 30,
          color: Colors.black,
        ),
        SizedBox(width: 20),
        Icon(
          Icons.near_me_outlined,
          size: 30,
          color: Colors.black,
        ),
        SizedBox(width: 20),
      ],
    );
  }

  boxStory(BuildContext context) {
    return
       Row(

        // scrollDirection: Axis.horizontal,
        children: [



                storyItem("assets/images/anh1.jpg", "Quang Thái"),
                storyItem("assets/images/anh1.jpg", "Quang Thái"),
                storyItem("assets/images/anh1.jpg", "Quang Thái"),
                storyItem("assets/images/anh1.jpg", "Quang Thái"),



        ],
      );

  }

  boxNewFeeds(BuildContext context) {
    return Column(
      children: [
        newFeedItem("Thái", "assets/images/anh1.jpg", "assets/images/anh12.jpg"),
        newFeedItem("Thái", "assets/images/anh1.jpg", "assets/images/cover3.jpg"),
        newFeedItem("Thái", "assets/images/anh1.jpg", "assets/images/anh1.jpg"),

      ],
    );
  }

  newFeedItem(String name, String logo, String imageFeed) {
    return Column(
      children: [
        SizedBox(height: 20,),
        logoFeed(name, logo) ,

        imageFeedItem(imageFeed),
        interactive(),
      ],
    );
  }

  logoFeed(String name, String logo) {
    return Padding(
      padding: const EdgeInsets.all(10.40),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20, // Image radius
            backgroundImage: AssetImage(logo),
          ),
          Text(
            name,
            style: TextStyle(fontSize: 15),
          )
        ],
      ),
    );
  }
  imageFeedItem(String imageFeed) {
    return Image.asset(imageFeed) ;
  }
  interactive() {
    return Padding(
      padding: const EdgeInsets.all(10.80),
      child: Row(
        mainAxisAlignment:  MainAxisAlignment.spaceBetween,

        children: [
          Column(
            children: [
              Row(
                children: const [
                  Icon(Icons.heart_broken_outlined, size: 30,),
                  SizedBox(width: 10,) ,
                  Icon(Icons.mode_comment_outlined , size: 30),
                  SizedBox(width: 10,) ,
                  Icon(Icons.near_me_outlined,  size: 30),
                ],
              )
            ],
          ),
          Column(
            children: const [
              Icon(Icons.bookmark_border ,  size: 30),
            ],
          ),
        ],
      ),
    );
  }
  storyItem(String image, String name) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(5), // Border width
          decoration:
              const BoxDecoration(color: Colors.red, shape: BoxShape.circle),
          child: ClipOval(
            child: SizedBox.fromSize(
              size: const Size.fromRadius(48), // Image radius
              child: Image.asset(image, fit: BoxFit.cover),
            ),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
