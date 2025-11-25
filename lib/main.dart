import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryColor = Color.fromARGB(255, 17, 20, 125);
    return MaterialApp(
      title: 'Nasa app',
      theme: ThemeData(
        primaryColor: primaryColor,
        colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
      ),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _selectedPageIndex = 0;
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (value) {
          setState(() {
            _selectedPageIndex = value;
          });
        },
        children: [
          MainScreen(theme: theme),
          Scaffold(),
          Scaffold(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPageIndex,
        onTap: _openPage,
        items: [
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 24,
              height: 24,
              child: SvgPicture.asset('assets/icons/planet.svg'),
            ),
            label: 'Space',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }

  void _openPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
    _pageController.animateToPage(
      index,
      duration: Duration(microseconds: 300),
      curve: Curves.linearToEaseOut,
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.theme});

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          snap: true,
          floating: true,
          title: Text('NASA'),
          backgroundColor: theme.primaryColor,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(70),
            child: TextFormField(),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            height: 2000,
            color: const Color.fromARGB(255, 255, 255, 255),
            child: Center(child: Text('Прокрути меня!')),
          ),
        ),
      ],
    );
  }
}
