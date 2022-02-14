import 'package:fetch_api_using_dio/pages/news/news_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class NewsPage extends GetView<NewsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Page')
      ),
      body: Center(child: Text('News Page', style: TextStyle(fontSize: 20),),),
    );
  }

}
