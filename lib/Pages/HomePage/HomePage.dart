import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Best News Here",style: Theme.of(context).textTheme.headlineLarge,),
      ),
     body: Padding(
       padding: const EdgeInsets.all(10),
       child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Hottest News",style: Theme.of(context).textTheme.bodyLarge,),
            Text("See All",style: Theme.of(context).textTheme.bodyLarge,),
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        Row(
          children: [
            Expanded(child: Container(
              height: 20.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: NetworkImage("Image Limk"),fit: BoxFit.cover,
                  ),
              ),
              child: Center(
                child: Text("News Titles",style: Theme.of(context).textTheme.bodyLarge,),
              ),
            ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
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
                      child:Image.network("imageUrl"),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Tranding No.1 ",style: Theme.of(context).textTheme.bodySmall,),
                      Text("10 day Ago ",style: Theme.of(context).textTheme.bodySmall,),
                    ],
                  ),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(child: Text("Save Water Save Life",style:Theme.of(context).textTheme.bodyLarge, ,))
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
                      Text("Rahul Kumar",style: Theme.of(context).textTheme.bodyLarge,),
                    ],
                  )
                ],
              ),
            )
          ],
        )
       ],),
     ),
    );
  }
}