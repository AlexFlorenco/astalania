import 'package:flutter/material.dart';

class Event {
  final Image image;
  final String title;
  final String genre;
  final String date;
  final String hour;
  final String local;
  final String descriptionLocal;
  final String description;

  Event({
    required this.image,
    required this.title,
    required this.genre,
    required this.date,
    required this.hour,
    required this.local,
    required this.descriptionLocal,
    required this.description,
  });
}

class EventList {
  List<Event> eventList = [
    Event(
      image: Image.asset('assets/images/evento1.jpg'),
      title: 'Vídeos de IA',
      genre: 'Oficina',
      date: '07 de Março (qui)',
      hour: '19h30',
      local: 'Discord de Astalânia',
      descriptionLocal: 'Sala Discussões',
      description:
          'Venha participar do evento sobre criação de vídeos e projetos com IA, promovido por Astalania!\n\n🎥✨ Aprenda a configurar prompts e criar vídeos incríveis com inteligência artificial.\nO evento será realizado nesta quinta-feira, às 19:30, na aba discussões do canal Olímpia.\n\nNão perca essa oportunidade de explorar o potencial da IA na produção de conteúdo audiovisual! 🚀🤖',
    ),
    Event(
      image: Image.asset('assets/images/evento2.jpg'),
      title: 'Museu no Metaverso',
      genre: 'Visita Guiada',
      date: '16 de Março (sáb)',
      hour: '15h00',
      local: 'Youtube do Iracema Digital',
      descriptionLocal: 'Mozilla Hubs',
      description:
          'Você está pronto para conhecer “pessoalmente” a história de um país sem sair de casa???\n\nPrepare-se para embarcar em uma jornada inesquecível pelo Museu Nacional de Astalânia, o primeiro e único museu virtual no Metaverso, que te convida a descobrir a história deste país cheio de encantos e mistérios no Planeta Jovem! O Museu Nacional de Astalânia é um lugar onde você irá aprender sobre nossa história, arte e cultura através das belezas naturais, as tradições milenares, os inventos revolucionários e as expressões artísticas de Astalânia.\n\nEste é um projeto exclusivo, que utiliza tecnologia de realidade virtual com modelos 3d construídos especialmente para esta exposição, tornando essa experiência educativa e divertida para pessoas de todas as idades.\n\nVenha viver esta aventura incrível no Metaverso! ',
    ),
    Event(
      image: Image.asset('assets/images/evento3.jpeg'),
      title: 'O que é Economia do Mar?',
      genre: 'Roda de Conversa',
      date: '30 de Março (sáb)',
      hour: '10h00',
      local: 'Youtube do Iracema Digital',
      descriptionLocal: 'Youtube',
      description:
          'Não percam!\nNo sábado, 30 de Março de 2024, às 10h, teremos uma roda de conversa imperdível sobre economia e direito do mar com Rômulo Alexandre Soares, especialista renomado em Direito do Mar.\n\nAcompanhem a transmissão ao vivo pelo canal do Iracema Digital no YouTube.\nPreparem-se para uma experiência enriquecedora! 🌟',
    )
  ];
}
