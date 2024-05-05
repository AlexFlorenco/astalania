import 'package:flutter/material.dart';

class News {
  final Image image;
  final String theme;
  final String title;
  final String subtitle;
  final String content;
  final String? video;
  final String date;

  News({
    this.video,
    required this.date,
    required this.content,
    required this.image,
    required this.theme,
    required this.title,
    required this.subtitle,
  });
}

class NewsList {
  List<News> newsList = [
    News(
        image: Image.asset('assets/images/metaverso.png'),
        theme: 'Tecnologia',
        title: 'Museu Nacional de Astalânia no Metaverso',
        subtitle:
            'Nas próximas semanas será inaugurado o museu nacional em realidade virtual.',
        content:
            'Prepare-se para embarcar em uma jornada inesquecível pelo Museu Nacional de Astalânia, o primeiro e único museu virtual no Metaverso, que te convida a descobrir a história deste país cheio de encantos e mistérios no Planeta Jovem!\n\nO Museu Nacional de Astalânia é um lugar onde você irá aprender sobre nossa história, arte e cultura através das belezas naturais, as tradições milenares, os inventos revolucionários e as expressões artísticas de Astalânia.\n\nEste é um projeto exclusivo, que utiliza tecnologia de realidade virtual com modelos 3d construídos especialmente para esta exposição, tornando essa experiência educativa e divertida para pessoas de todas as idades.',
        date: '09/02/2024'),
    News(
        image: Image.asset('assets/images/protecao_florestal.png'),
        theme: 'Meio Ambiente',
        title: 'Astalânia já colhe frutos de alianças',
        subtitle:
            'O Departamento de Saúde e Meio Ambiente anuncia a inauguração da Secretaria de Proteção Florestal.',
        content:
            'Astalânia comemora a inauguração da Secretaria de Proteção Florestal em colaboração com Jambor, um país comprometido com a preservação ambiental.\n\nEssa parceria fortalece nosso empenho em proteger nossos recursos naturais e combater o desmatamento, promovendo um futuro mais sustentável.\nJuntos, estamos escrevendo uma nova história de conservação ambiental, convidando todos a se unirem a nós nessa importante jornada.',
        date: '06/02/2024'),
    News(
        image: Image.asset('assets/images/falden_gajen2.jpg'),
        theme: 'Saúde',
        title: 'Departamento de Saúde anuncia medidas de contenção',
        subtitle:
            'Comitê de saúde de Astalânia age de imediato e anuncia pacote de medidas para conter o avanço da doença no Planeta Jovem.',
        content:
            'Leia o pronunciamento na integra:\n\n"Cidadãos dedicados de Astalânia,\nHoje, unimos as vozes do Ministério da Saúde e Meio Ambiente para abordar um desafio que transcende as nossas fronteiras: a "Síndrome de Falden-Gajen". Este fenômeno não apenas afeta nosso engajamento, mas também impacta a saúde de nossa comunidade. Em nossa jornada para um ambiente mais saudável e engajado, implementaremos medidas colaborativas e sustentáveis:\n\n1. Engajamento Sadio: Buscamos uma abordagem que promova um engajamento sadio em nossas atividades, onde todos sintam-se incentivados a contribuir para o bem coletivo.\n2. Consciência Ambiental: Integraremos práticas que promovam a consciência ambiental em nossas atividades, fortalecendo a conexão e o ambiente ao nosso redor.\n3. Ciclo de Melhoria Contínua: Estabelecemos um ciclo de melhoria contínua, onde revisaremos regularmente nossas estratégias para garantir que sejam eficazes, equitativas e sustentáveis.\n\nAo abordar a "Síndrome de Falden-Gajen", reconhecemos que nossa saúde e o meio ambiente estão intrinsecamente ligados. Somente através de uma abordagem holística e colaborativa, podemos criar um ambiente vibrante e sustentável.\n\nVamos juntos, como uma comunidade unida, transformar esse desafio em uma oportunidade para fortalecer nossos laços, cuidar de nossa saúde e preservar a beleza do nosso ambiente.',
        date: '05/02/2024'),
    News(
        image: Image.asset('assets/images/falden_gajen.jpeg'),
        theme: 'Saúde',
        title: 'Astalânia registra o primeiro caso de falden-gajen',
        subtitle:
            'O primeiro caso da doença foi identificado em um dos tripulantes de Astalânia.',
        content:
            'O Departamento de Saúde e Meio Ambiente de Astalânia confirmou nesta sexta-feira (02) o primeiro caso de Falden-Gajen, a doença da falta de engajamento, que vem afetando vários tripulantes do Planeta Jovem. O paciente, que não teve a identidade revelada, é um dos membros do próprio Departamento de Saúde e Meio Ambiente e apresentou sintomas como inatividade, desinteresse e apatia nas atividades propostas.\n\nO Falden-Gajen é um vírus que foi detectado pelo comitê de Ciência e Saúde do Olímpia, em parceria com a Organização Mundial de Saúde do PJ2, e que se caracteriza pela falta de engajamento nas atividades no Planeta Jovem.\nO paciente de Astalânia foi diagnosticado na fase da murrinha e de imediato foi colocado em quarentena, que consiste em uma atividade intensiva para estimular o seu engajamento. O mesmo segue sendo monitorado pelos médicos do país.\n\nSegundo o porta-voz de Astalânia, a Falden-Gajen está sob controle, e até então não oferece risco de transmissão entre os tripulantes.',
        date: '02/02/2024'),
    News(
        image: Image.asset('assets/images/dag.png'),
        theme: 'Relações Exteriores',
        title: 'Astalânia expande fronteiras comerciais',
        subtitle:
            'É anunciado oficialmente o DAG, novo bloco econômico que Astalânia fará parte.',
        content:
            'Os líderes de Galixandria, Dolmin e Astalânia assinaram na última sexta-feira (26/01), em Astalânia, um tratado que oficializa a criação de um novo bloco econômico entre os três países.\n\nO bloco, chamado de DAG, tem como objetivo fortalecer as relações comerciais, culturais e políticas, através da eliminação das tarifas alfandegárias entre os países do bloco, a adoção de uma moeda única e a harmonização de políticas fiscais, monetárias, sociais e ambientais.\n\nA criação do bloco é um marco histórico para os países envolvidos e para o Planeta Jovem:\n"Estamos dando um passo importante para o nosso futuro, construindo uma união baseada na solidariedade, na prosperidade e na paz. A DAG é um exemplo de como é possível superar as diferenças e buscar o bem comum, respeitando a soberania e a diversidade de cada nação", declarou Alex, presidente do Conselho Federal de Astalânia.\n\nO tratado entrará em vigor após a ratificação pelos parlamentos nacionais dos três países, o que deve ocorrer até o final deste trimestre.',
        date: '26/01/2024'),
    News(
        image: Image.asset('assets/images/parceria_comercial.jpeg'),
        theme: 'Relações Exteriores',
        title: 'Astalânia garante investimentos na saúde',
        subtitle:
            'Parceria comercial é firmada com Galixandria, em prol do desenvolvimento tecnológico e comercial.',
        content:
            'Em busca de fortalecer os laços comerciais e garantir a colaboração necessária para o desenvolvimento dos países, foi firmado na tarde de hoje (26/01) uma aliança com Galixandria, que garante, através de troca de recursos naturais, o desenvolvimento de novas pesquisas e medicamentos de origem natural.\n\n- Compromissos de Galixandria:\nFornecer infraestrutura adequada como centros de atendimento equipados com a tecnologia e as instalações necessárias. Além de fornecer recursos naturais necessários ao país.\n\n- Compromissos de Astalania:\nFortalecer o comércio de frutos do mar por meio da redução de barreiras tarifárias e regulamentando a participação em blocos econômicos globais.\nIncentivo à pesquisa, utilizando as algas medicinais de Astalânia, por meio da criação de uma rede de cooperação científica e tecnológica.',
        date: '26/01/2024'),
    News(
        image: Image.asset('assets/images/jovens_empreendedores.png'),
        theme: 'Cultura',
        title: 'Jovens Empreendedores visitam Astalânia',
        subtitle:
            'Neste vídeo você vai conhecer as histórias inspiradoras de Raquel e Jefferson, que transformaram suas ideias em negócios de sucesso.',
        content: '',
        video: 'assets/videos/jovens_empreendedores.mp4',
        date: '26/01/2024'),
    News(
        image: Image.asset('assets/images/nalui.jpg'),
        theme: 'Economia',
        title: 'Astalânia cresce com eco-turismo e artesanato',
        subtitle:
            'Astalânia vem ganhando destaque no cenário mundial por seu investimento em eco-turismo e no artesanato,',
        content:
            'Essas atividades geram renda, emprego e desenvolvimento sustentável para o país e para as comunidades locais, que preservam o meio ambiente e as tradições dos povos nativos.\n\nO eco-turismo em Astalânia oferece experiências de contato com a natureza e com a cultura, enquanto o artesanato expressa a criatividade, a identidade e a diversidade cultural do país.\nAstalânia é um exemplo de como é possível conciliar o desenvolvimento econômico com a preservação ambiental e a valorização cultural, e se tornou um destino turístico de qualidade, que atrai visitantes de todo o mundo.\n\nNão vá embora antes de visitar estes lugares:\n- O Santuário Ecológico de Santa Tereza: um dos cenários mais belos de Astalânia, que abriga uma reserva de fauna e flora.\nLocal: Ilha de Kai\n\n- A Rota do Mar, um roteiro turístico que percorre as principais praias e ilhas de Astalânia onde é possível praticar mergulho, surf e observação da vida marinha.\nLocal: Ilha de Nalui\n\n- Fazenda Luminara: uma fazenda histórica que se transformou em uma atração ecológica, com uma área verde de 300 hectares, que possui uma enorme piscina natural.\nLocal: Ilha Luminara',
        date: '19/01/2024'),
    News(
        image: Image.asset('assets/images/hanaua.jpg'),
        theme: 'Política',
        title: 'Proposta para novo sistema de governo é aprovada',
        subtitle:
            'Astalânia acaba de eleger um novo sistema de governo, o Conselho Federal, que busca garantir a representatividade e a cooperação entre os diferentes setores do país.',
        content:
            'Astalânia adotou um novo sistema de governo, o Conselho Federal. Este novo sistema é uma aposta ousada e inovadora de Astalânia, que busca romper com os modelos tradicionais de governança e se adaptar aos desafios e às oportunidades do século XXI.\n\nO conselho federal funciona de forma colegiada, com decisões conjuntas e presidência rotativa, formado por oito conselheiros eleitos, que lideram quatro departamentos:\n- Comunicação e Cultura;\n- Economia e Relações Exteriores;\n- Saúde e Meio Ambiente;\n- Tecnologia e Inovação.\n\nO objetivo do novo sistema é promover o desenvolvimento sustentável, a cooperação e a integração regional, baseado na Economia do Mar, que são as novas fronteiras da economia.\n\nA expectativa é que o conselho federal consiga implementar as ações propostas e alcançar os resultados esperados, garantindo o bem-estar e o desenvolvimento do país e de sua população.',
        date: '12/01/2024'),
  ];
}
