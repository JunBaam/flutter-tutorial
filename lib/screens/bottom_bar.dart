import 'package:flutter/material.dart';
import 'package:ticket/screens/home_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 2;

// NOTE: 선택에 따라 다른페이지 노출
  static final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    const Text('Searsafasch'),
    const Text('Tickasfasets'),
    const Text("Proffasile")
  ];

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('my ticket'),
      ),
      body: Center(child: _widgetOptions[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
          // NOTE: 해당 위젯에 index가 쓰이고 있다는것을 알려준다 (동적작용)  key같은 느낌인듯?
          currentIndex: _selectedIndex,
          onTap: onItemTapped,
          elevation: 10,
          showSelectedLabels: false,
          showUnselectedLabels: true,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: const Color(0XFF526480),
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.airplane_ticket), label: "Ticket"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "person"),
          ]),
    );
  }
}
