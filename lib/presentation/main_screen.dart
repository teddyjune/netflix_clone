import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return const TopBar();
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
