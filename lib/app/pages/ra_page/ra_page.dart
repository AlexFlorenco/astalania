import 'dart:ui';

import 'package:astalania/app/pages/ra_page/widgets/camera_app.dart';
import 'package:external_app_launcher/external_app_launcher.dart';
import 'package:flutter/material.dart';

class RAPage extends StatefulWidget {
  const RAPage({super.key});

  @override
  State<RAPage> createState() => _RAPageState();
}

class _RAPageState extends State<RAPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Realidade Aumentada',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 20),
            ClipRRect(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  ImageFiltered(
                    imageFilter: ImageFilter.blur(
                        sigmaX: 25, sigmaY: 25, tileMode: TileMode.mirror),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.7,
                      child: Stack(children: [
                        const CameraApp(),
                        Container(
                          color: Colors.black54,
                        )
                      ]),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    height: 225,
                    child: Column(
                      children: [
                        const Icon(
                          Icons.view_in_ar_rounded,
                          size: 100,
                          color: Colors.white,
                        ),
                        const SizedBox(height: 6),
                        const Text(
                          'Aponte a câmera',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: 160,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white),
                              onPressed: () async {
                                await LaunchApp.openApp(
                                  androidPackageName:
                                      'br.edu.ifce.alexflorenco',
                                  iosUrlScheme: 'unity://',
                                );
                              },
                              child: const Text(
                                'Começar',
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w600),
                              )),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
