import 'package:astalania/app/pages/descubra_page/descubra_page.dart';
import 'package:astalania/app/pages/noticias_page/noticias_page.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

import 'ra_page/ra_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _indexPage = 0;
  RxBool isOpen = true.obs;

  final List<Widget> _pages = [
    const DescubraPage(),
    const NoticiasPage(),
    const RAPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.54,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/home.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              height: MediaQuery.of(context).size.height * 0.85,
              top: MediaQuery.of(context).size.height * 0.15,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(24.0),
                  topRight: Radius.circular(24.0),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: _pages[_indexPage],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            setState(() {
              _indexPage = index;
            });
          },
          currentIndex: _indexPage,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              label: 'Descubra',
              icon: Icon(Icons.public),
            ),
            BottomNavigationBarItem(
              label: 'Notícias',
              icon: Icon(Icons.newspaper),
            ),
            BottomNavigationBarItem(
              label: 'R.A.',
              icon: Icon(Icons.view_in_ar),
            ),
          ]),
    );
  }
}
