import 'package:flutter/material.dart';

class TrandingCard extends StatelessWidget {
  final String imageUrl;
  final String tag;
  final String time;
  final String title;
  final String auther;

  const TrandingCard({super.key, required this.imageUrl, required this.tag, required this.time, required this.title, required this.auther});

  @override
  Widget build(BuildContext context) {
    return Container(
              margin: EdgeInsets.only(right: 10.0),
              padding: EdgeInsets.all(10.0),
              height: 200,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).colorScheme.primaryContainer,
              ),
              child: Column(
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Theme.of(context).colorScheme.background,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child:Image.network(imageUrl),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("$tag ",style: Theme.of(context).textTheme.bodySmall,),
                      Text("$time ",style: Theme.of(context).textTheme.bodySmall,),
                    ],
                  ),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(child: Text("$title",style:Theme.of(context).textTheme.bodyLarge, ))
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 16.0,
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        child: Image.network("auther image"),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("$auther",style: Theme.of(context).textTheme.bodyLarge,),
                    ],
                  ),
                  SizedBox(height: 10.0,)
                ],
              ),
            );
  }
}