import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:auto_route/auto_route.dart';
import 'package:nasa_app/router/router.dart';
import 'package:nasa_app/router/router.gr.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    final primaryColor = Color.fromARGB(255, 17, 20, 125);
    return MaterialApp.router(
      title: 'Nasa app',
      theme: ThemeData(
        primaryColor: primaryColor,
        colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
      ),
      routerConfig: _router.config(),
      debugShowCheckedModeBanner: false,
    );
  }
}

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AutoTabsRouter(
      routes: [
        MainRoute(theme: theme),
        CardsListRoute(
          title:
              'Жесткое что то написаное пипец да шзаришщугаишгуыщгапигуышиа унаищышуаи ы',
          description: 'Что то крутое длинный текст фщжгцизгвтфцзшгвишфг',
        ),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) => _openPage(index, tabsRouter),
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
      },
    );
  }

  void _openPage(int index, TabsRouter tabsRouter) {
    tabsRouter.setActiveIndex(index);
  }
}

@RoutePage()
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

@RoutePage()
class CardsListScreen extends StatelessWidget {
  final String title;
  final String description;

  const CardsListScreen({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.star, color: Colors.yellowAccent, size: 35),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    softWrap: true,
                    overflow: TextOverflow.visible,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              description,
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                print('SomeShit $title');
              },
              child: Text('SomeShit'),
            ),
          ],
        ),
      ),
    );
  }
}
