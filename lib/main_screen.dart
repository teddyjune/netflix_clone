import 'package:flutter/material.dart';

import 'coming_soon.dart';
import 'search_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  final _pages = [
    const SearchScreen(),
    const ComingSoon(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('영화'),
      ),
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: 400,
            child: Image.network(
                'https://image.tmdb.org/t/p/w500/nmGWzTLMXy9x7mKd8NKPLmHtWGa.jpg',
                fit: BoxFit.cover),
          ),
          const Text('육사오'),
          Row(
            children: [
              const Icon(Icons.add),
              ElevatedButton(onPressed: () {}, child: const Text('재생')),
              const Icon(Icons.info_outline),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.white),
            label: '검색',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_collection_outlined, color: Colors.white),
            label: '공개예정',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.download, color: Colors.white),
            label: '저장된 콘텐츠',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
