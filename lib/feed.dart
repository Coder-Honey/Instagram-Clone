import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:instagram/post.dart';
import 'package:instagram/story.dart';

class Feed extends StatelessWidget {
  List<Story> _stories = [
    Story(
        "https://images.pexels.com/photos/3841338/pexels-photo-3841338.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Your story"),
    Story(
        "https://images.pexels.com/photos/3482523/pexels-photo-3482523.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Sehna"),
    Story(
        "https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Lavina"),
    Story(
        "https://images.pexels.com/photos/736716/pexels-photo-736716.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        "Mickey"),
    Story(
        "https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Roni"),
    Story(
        "https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        "Carlie"),
    Story(
        "https://images.pexels.com/photos/941693/pexels-photo-941693.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Edie"),
    Story(
        "https://images.pexels.com/photos/372042/pexels-photo-372042.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Florrie"),
    Story(
        "https://images.pexels.com/photos/324658/pexels-photo-324658.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Linde"),
    Story(
        "https://images.pexels.com/photos/716411/pexels-photo-716411.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Freddy"),
    Story(
        "https://images.pexels.com/photos/1758144/pexels-photo-1758144.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Lonp")
  ];

  List<Post> posts = [
    Post(
        username: "Lavina",
        userImage:
            "https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        postImage:
            "https://images.pexels.com/photos/1755385/pexels-photo-1755385.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        caption: "World to Me."),
    Post(
        username: "Mickey",
        userImage:
            "https://images.pexels.com/photos/736716/pexels-photo-736716.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        postImage:
            "https://images.pexels.com/photos/395196/pexels-photo-395196.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        caption: "Water and Bridge."),
    Post(
        username: "Linde",
        userImage:
            "https://images.pexels.com/photos/324658/pexels-photo-324658.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        postImage:
            "https://images.pexels.com/photos/1586663/pexels-photo-1586663.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        caption: "Shadows."),
    Post(
        username: "Sehna",
        userImage:
            "https://images.pexels.com/photos/3482523/pexels-photo-3482523.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        postImage:
            "https://images.pexels.com/photos/904276/pexels-photo-904276.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        caption: "Colors are Life."),
    Post(
        username: "Roni",
        userImage:
            "https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        postImage:
            "https://images.pexels.com/photos/212286/pexels-photo-212286.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        caption: "Planning."),
    Post(
        username: "Edie",
        userImage:
            "https://images.pexels.com/photos/941693/pexels-photo-941693.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        postImage:
            "https://images.pexels.com/photos/764880/pexels-photo-764880.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        caption: "Sometimes Alone."),
    Post(
        username: "Florrie",
        userImage:
            "https://images.pexels.com/photos/372042/pexels-photo-372042.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        postImage:
            "https://images.pexels.com/photos/1804796/pexels-photo-1804796.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        caption: "Dreams."),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Divider(),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(
                vertical: 10,
              ),
              height: 110,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: _stories.map((story) {
                  return Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(70),
                          border: Border.all(
                            width: 3,
                            color: Color(0xFFEEEEEE),
                          ),
                        ),
                        child: Container(
                          padding: EdgeInsets.all(
                            2,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(70),
                            child: Image(
                              image: NetworkImage(story.image),
                              width: 70,
                              height: 70,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        story.name,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  );
                }).toList(),
              ),
            ),

            // posts
            Container(
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: posts.length,
                itemBuilder: (ctx, i) {
                  return Container(
                    color: Colors.black,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(40),
                                    child: Image(
                                      image: NetworkImage(posts[i].userImage),
                                      width: 40,
                                      height: 40,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    posts[i].username,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Billabong',
                                    ),
                                  ),
                                ],
                              ),
                              IconButton(
                                icon: Icon(SimpleLineIcons.options),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),

                        FadeInImage(
                          image: NetworkImage(posts[i].postImage),
                          placeholder: AssetImage("images/placeholder.png"),
                          width: MediaQuery.of(context).size.width,
                        ),
                        //Post Buttons
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                IconButton(
                                  onPressed: () {},
                                  color: Color(0xFFEEEEEE),
                                  icon: Icon(FontAwesome.heart_o),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  color: Color(0xFFEEEEEE),
                                  icon: Icon(FontAwesome.comment_o),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  color: Color(0xFFEEEEEE),
                                  icon: Icon(FontAwesome.send_o),
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              color: Color(0xFFEEEEEE),
                              icon: Icon(FontAwesome.bookmark_o),
                            ),
                          ],
                        ),
                        //Liked
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(
                            horizontal: 14,
                          ),
                          child: RichText(
                            softWrap: true,
                            overflow: TextOverflow.visible,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Liked By ",
                                  style: TextStyle(color: Colors.white),
                                ),
                                TextSpan(
                                  text: "Shenhal,",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                TextSpan(
                                  text: " Rubika,",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                TextSpan(
                                  text: " Rohan",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                TextSpan(
                                  text: " and",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                TextSpan(
                                  text: " 1263 others",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // caption
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 5,
                          ),
                          child: RichText(
                            softWrap: true,
                            overflow: TextOverflow.visible,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: posts[i].username,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                TextSpan(
                                  text: " ${posts[i].caption}",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // post date
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 14,
                          ),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Febuary 2020",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
