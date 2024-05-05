import 'package:astalania/app/pages/descubra_page/widgets/item_link.dart';
import 'package:astalania/app/pages/descubra_page/widgets/list_view_events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DescubraPage extends StatelessWidget {
  const DescubraPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        clipBehavior: Clip.none,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Descubra Astalânia',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 18,
            ),
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(6)),
              child: FlutterCarousel(
                options: CarouselOptions(
                    viewportFraction: 1,
                    height: 160.0,
                    showIndicator: true,
                    slideIndicator: CircularWaveSlideIndicator(
                        indicatorRadius: 5, itemSpacing: 16),
                    enlargeCenterPage: true,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 5)),
                items: [
                  'assets/images/carousel_hanaua.png',
                  'assets/images/carousel_kai.png',
                  'assets/images/carousel_cari.png',
                  'assets/images/carousel_nalui.png',
                  'assets/images/carousel_luminara.png',
                ].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return GestureDetector(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (_) {
                                return AlertDialog(
                                  actions: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: const Text('Fechar'))
                                  ],
                                  actionsPadding: EdgeInsets.zero,
                                  shape: const Border(bottom: BorderSide.none),
                                  contentPadding: EdgeInsets.zero,
                                  content: SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.4,
                                    width: MediaQuery.of(context).size.width,
                                    child: Image.asset(
                                      i,
                                      fit: BoxFit.cover,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.5,
                                    ),
                                  ),
                                );
                              });
                        },
                        child: Image.asset(
                          i,
                          fit: BoxFit.cover,
                          width: MediaQuery.of(context).size.width,
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
            const SizedBox(
              height: 26,
            ),
            const Text(
              'Eventos de Março',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 16,
            ),
            ListViewEvents(),
            const SizedBox(height: 26),
            const Text(
              'Links rápidos',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 16),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ItemLink(
                  icon: Icon(Icons.logo_dev, size: 28),
                  link: 'https://www.linkedin.com/in/alexflorenco/',
                  label: 'Desenvolvedor',
                ),
                ItemLink(
                  icon: Icon(Icons.discord, size: 26),
                  link:
                      'https://discord.com/channels/1184825949221564586/1184825950748299386',
                  label: 'Discord',
                ),
                ItemLink(
                  icon: Icon(FontAwesomeIcons.instagram, size: 26),
                  link: 'https://www.instagram.com/rede_astalania/',
                  label: 'Instagram',
                ),
                ItemLink(
                  icon: Icon(FontAwesomeIcons.earthAmericas),
                  link: 'https://iracemadigital.com.br/planetajovem/',
                  label: 'Planeta Jovem',
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
          ],
        ),
      ),
    );
  }
}
