import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ModalNewsWidget extends StatefulWidget {
  const ModalNewsWidget(
      {super.key,
      this.video,
      required this.title,
      required this.subtitle,
      required this.date,
      required this.image,
      required this.content});

  final String title;
  final String subtitle;
  final String date;
  final Image image;
  final String content;
  final String? video;

  @override
  State<ModalNewsWidget> createState() => _ModalNewsWidgetState();
}

class _ModalNewsWidgetState extends State<ModalNewsWidget> {
  late VideoPlayerController _controller = VideoPlayerController.asset('');

  @override
  void initState() {
    super.initState();
    if (widget.video != null) {
      _controller = VideoPlayerController.asset(widget.video!);
      _controller.addListener(() {
        setState(() {});
      });
      _controller.setLooping(true);
      _controller.initialize().then((_) => setState(() {}));
    }
  }

  @override
  void dispose() {
    if (widget.video != null) {
      _controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.0),
          topRight: Radius.circular(24.0),
        ),
      ),
      height: MediaQuery.of(context).size.height * 0.84,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: ListView(
              children: [
                const SizedBox(height: 28),
                Text(
                  widget.title,
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold, height: 1),
                ),
                const SizedBox(height: 8),
                Text(
                  widget.subtitle,
                  style: const TextStyle(
                    fontSize: 16,
                    height: 1.2,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  widget.date,
                  textAlign: TextAlign.end,
                  style: const TextStyle(
                    fontSize: 14,
                    height: 1.2,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                const SizedBox(height: 22),
                widget.video == null
                    ? widget.image
                    : _controller.value.isInitialized
                        ? GestureDetector(
                            onTap: () {
                              setState(() {
                                _controller.value.isPlaying
                                    ? _controller.pause()
                                    : _controller.play();
                              });
                            },
                            // padding: const EdgeInsets.all(20),
                            child: AspectRatio(
                              aspectRatio: _controller.value.aspectRatio,
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: <Widget>[
                                  VideoPlayer(_controller),
                                  VideoProgressIndicator(_controller,
                                      allowScrubbing: true),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height,
                                    child: Icon(
                                      _controller.value.isPlaying
                                          ? Icons.pause
                                          : Icons.play_arrow,
                                      color: Colors.white,
                                      size: 40,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : Container(),
                const SizedBox(height: 6),
                widget.video == null
                    ? const Text(
                        'Imagem gerada por Inteligência Artificial',
                        style: TextStyle(fontWeight: FontWeight.w300),
                      )
                    : const Text(
                        'Conteúdo de autoria dos tripulantes de Astalânia'),
                const SizedBox(height: 22),
                Text(
                  widget.content,
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 22),
                const SizedBox(height: 40),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24.0),
                topRight: Radius.circular(24.0),
              ),
            ),
            width: MediaQuery.of(context).size.width,
            height: 45,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(Icons.close)),
                const SizedBox(
                  width: 16,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
