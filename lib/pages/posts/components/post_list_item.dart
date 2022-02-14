import 'package:fetch_api_using_dio/models/post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostListItem extends StatelessWidget {
  final Post post;

  const PostListItem({Key key, this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 15),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(20), boxShadow: [
        BoxShadow(
            color: Colors.black.withAlpha(25),
            blurRadius: 1,
            spreadRadius: 1,
            offset: Offset(0, 1))
      ]),
      child: Column(
        children: [
          Row(
            children: [
              ClipOval(
                child: Image.network(
                  'https://picsum.photos/50/50?random=${post.id}',
                  height: 40,
                  width: 40,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text(
                    post.title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    softWrap: false,
                    style: TextStyle(fontSize: 17),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text('Two days ago', style: TextStyle(fontSize: 13)),
                ],)
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Text(post.body),
          Row(children: [
            IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.heart, color: Colors.redAccent)),
            IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.bookmark,)),
            const Spacer(),
            IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.hand_thumbsdown)),
            IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.hand_thumbsup, color: Colors.blueAccent)),
          ],)
        ],
      ),
    );
  }
}
