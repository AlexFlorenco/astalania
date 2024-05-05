import 'package:astalania/app/pages/noticias_page/widgets/modal_news.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../models/news.dart';
import 'widgets/news_widget.dart';

List<News> newsList = NewsList().newsList;

class NoticiasPage extends StatefulWidget {
  const NoticiasPage({super.key});

  @override
  State<NoticiasPage> createState() => _NoticiasPageState();
}

class _NoticiasPageState extends State<NoticiasPage> {
  var isLoading = false;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator.adaptive(
      onRefresh: () async {
        setState(() {
          isLoading = true;
        });
        await Future.delayed(const Duration(seconds: 1));
        setState(() {
          isLoading = false;
        });
      },
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Últimas notícias',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 11,
            ),
            isLoading
                ? SizedBox(
                    height: MediaQuery.of(context).size.height * 0.66,
                    child: Center(
                      child: LoadingAnimationWidget.newtonCradle(
                        color: Colors.blue,
                        // rightDotColor: Colors.orange[700]!,
                        size: 120,
                      ),
                    ),
                  )
                : ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.symmetric(vertical: 0),
                    separatorBuilder: (_, __) => const Divider(),
                    itemCount: newsList.length + 1,
                    itemBuilder: (_, index) => index < newsList.length
                        ? GestureDetector(
                            onTap: () => showModalBottomSheet(
                                isScrollControlled: true,
                                context: context,
                                builder: (context) => ModalNewsWidget(
                                      title: newsList[index].title,
                                      subtitle: newsList[index].subtitle,
                                      image: newsList[index].image,
                                      content: newsList[index].content,
                                      video: newsList[index].video,
                                      date: newsList[index].date,
                                    )),
                            child: NewsWidget(
                              image: newsList[index].image,
                              theme: newsList[index].theme,
                              title: newsList[index].title,
                              subtitle: newsList[index].subtitle,
                            ),
                          )
                        : SizedBox(
                            height: MediaQuery.of(context).size.height * 0.15,
                          ),
                  ),
          ],
        ),
      ),
    );
  }
}
