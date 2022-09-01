import 'package:flutter/material.dart';
import 'package:netflix_clone/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            brightness: Brightness.dark, primaryColor: Colors.blueGrey),
        home: DefaultTabController(
          length: 4,
          child: Scaffold(
            body: TabBarView(
              children: [
                const MainScreen(),
                Container(),
                Container(),
                Container(),
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
                  icon: Icon(Icons.video_collection_outlined,
                      color: Colors.white),
                  label: '공개예정',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.download, color: Colors.white),
                  label: '저장된 콘텐츠',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.list, color: Colors.white),
                  label: '더보기',
                ),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: Colors.amber[800],
              onTap: _onItemTapped,
            ),
          ),
        ));
  }
}
