import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Container(
          width: 300.0,
          height: 300.0,
          decoration: BoxDecoration(
            color: Colors.blue,
            border: Border.all(
              width: 5,
              color: Colors.black,
            ),
            // borderRadius: BorderRadius.circular(20)),
            shape: BoxShape.circle,
            image: const DecorationImage(
              image: NetworkImage(
                'https://townsquare.media/site/48/files/2013/12/WoodchuckOlympicMarmot-Credit-Fuse-78781129.jpg?w=1200&h=0&zc=1&s=0&a=t&q=89',
              ),
              fit: BoxFit.cover,
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0xFFDD0B39),
                blurRadius: 10,
                offset: Offset(0, 5),
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {
                          print('1');
                        },
                        icon: Icon(Icons.star)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.star)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.star)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Text 3'),
                    Text('Text 4'),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
