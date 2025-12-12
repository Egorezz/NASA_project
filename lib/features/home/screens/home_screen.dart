import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(title: Text('HomeScreen'), backgroundColor: Colors.amber),
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
