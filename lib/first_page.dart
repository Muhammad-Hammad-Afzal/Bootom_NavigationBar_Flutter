import 'package:bootm_navigation/Home.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  Home home = Home();
  int _currentindex = 0;
  final tabs = [
   Home(),
   const Center(child: Text('Search',style: TextStyle(fontSize: 25,backgroundColor: Colors.blue))),
   const Center(child: Text('Bookmark',style: TextStyle(fontSize: 25,backgroundColor: Colors.grey))),
   const Center(child: Text('Profile',style: TextStyle(fontSize: 25,backgroundColor: Colors.orange))),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: tabs[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.purple,
          selectedItemColor: Colors.white,
          showUnselectedLabels: false,
          showSelectedLabels: true,
          iconSize: 30,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home',backgroundColor: Colors.green),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search',backgroundColor: Colors.blue),
            BottomNavigationBarItem(icon: Icon(Icons.bookmark),label: 'Bookmark',backgroundColor: Colors.grey),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile',backgroundColor: Colors.orange),
          ],
          onTap: (index){
          setState(() {
            _currentindex = index;
          });
    },
      ),
    );
  }
}
