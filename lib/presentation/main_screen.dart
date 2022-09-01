import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 600,
          child: Image.network(
              'https://image.tmdb.org/t/p/w500/nmGWzTLMXy9x7mKd8NKPLmHtWGa.jpg',
              fit: BoxFit.cover),
        ),
        const TopBar(),
        Positioned(
          bottom: 300,
          child: Row(
            children: [
              Column(
                children: const [
                  Icon(Icons.add),
                  Text('내가 찜한 콘텐츠'),
                ],
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                  ),
                  onPressed: () {},
                  child: Row(
                    children: const [
                      Icon(Icons.play_arrow),
                      Text('재생'),
                    ],
                  )),
              Column(
                children: [
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.info_outline)),
                  const Text('정보'),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset('assets/netflix.png', fit: BoxFit.cover, height: 25),
        const Text('TV 프로그램'),
        const Text('영화'),
        const Text('내가 찜한 콘텐츠'),
      ],
    );
  }
}
