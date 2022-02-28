import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context)  {
    return Scaffold(
      appBar: AppBar(title: Text('Detail Page')),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text('Post Detail ${Get.arguments['id']}'),
              Image.network(
                'https://picsum.photos/500/500?random=${Get.arguments['id']}',
              ),
              SizedBox(height: 15,),
              Text('${Get.arguments['title']}', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text('${Get.arguments['body']}', style: TextStyle(fontSize: 14)),
            ],
          ),
        ),
      ),
    );
  }
}
