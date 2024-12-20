import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'user_manage/user_provider.dart';
import 'calendar/calendar.dart';
import 'group/screens/group_list_screen.dart';
import 'Memo/Memo.dart';
import 'user_manage/Profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  // 각 네비게이션 탭에 연결된 페이지
  final List<Widget> _pages = [
    const Calendar(),
    const Memo(), // 메모 화면
    GroupListScreen(),
    RegistProfile(), // 프로필 페이지
  ];

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);

    return Scaffold(
      backgroundColor: Colors.white, // 배경을 흰색으로 설정
      body: _pages[_selectedIndex], // 선택된 페이지 표시
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: _navBarItems,
      ),
    );
  }
}

// SalomonBottomBar 아이템 정의
final _navBarItems = [
  SalomonBottomBarItem(
    icon: const Icon(Icons.calendar_today_outlined),
    title: const Text("캘린더"),
    selectedColor: Colors.purple,
  ),
  SalomonBottomBarItem(
    icon: const Icon(Icons.note),
    title: const Text("메모"),
    selectedColor: Colors.indigo,
  ),
  SalomonBottomBarItem(
    icon: const Icon(Icons.group_outlined),
    title: const Text("그룹"),
    selectedColor: Colors.deepPurple,
  ),
  SalomonBottomBarItem(
    icon: const Icon(Icons.person),
    title: const Text("내 정보"),
    selectedColor: Colors.blueGrey,
  ),
];
