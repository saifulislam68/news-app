import 'package:flutter/material.dart';
import 'package:news_app/dummy.dart';
import 'package:news_app/dummy_detail.dart';


class NewsApp extends StatefulWidget {
  final List<News> _posts = [
    News(
      title: 'Shakib-led Tigers',
      description: 'Shakib-led Tigers keen to usher a new era in Test cricket',
      imageUrl: 'https://images.prothomalo.com/prothomalo-english%2F2022-05%2F757edb33-9213-43a9-b523-284ad3051181%2FMominul.jpg?rect=0%2C0%2C2067%2C1163&auto=format%2Ccompress&fmt=webp&format=webp&w=940&dpr=1.0'
    ),
    News(
      title: 'Army launches ',
      description: 'The Bangladesh Army has launched a toll-free helpline for the flood victims of Sylhet and Sunamganj.',
      imageUrl: 'https://images.prothomalo.com/prothomalo-english%2F2022-06%2F346b1ae0-91d1-4bb9-a45c-3e65e9955d6c%2FSylhet_flood_01.JPG?rect=0%2C0%2C6720%2C3780&auto=format%2Ccompress&fmt=webp&format=webp&w=940&dpr=1.0'
    ),
     News(
      title: 'shut markets after 8:00 pm',
      description: 'Prime Minister Sheikh Hasina has asked all concerned to take necessary measures to shut down shops, shopping malls,',
      imageUrl: 'https://images.prothomalo.com/prothomalo-english%2Fimport%2Fmedia%2F2018%2F05%2F25%2F4e795f64fa6c2af5a9b4c7bdb6fb65f1-Eid-shopping.jpg?rect=0%2C0%2C640%2C360&auto=format%2Ccompress&fmt=webp&format=webp&w=940&dpr=1.0'
    ),
    News(
      title: 'Road Accident',
      description: 'A police constable has been crushed to death under the wheels of a bus on Chattogram-Coxs Bazar',
      imageUrl: 'https://images.prothomalo.com/prothomalo-english%2F2021-07%2F0d7f5d17-1b47-4bb4-9896-0255d47ecadd%2FUntitled.jpg?rect=0%2C0%2C1600%2C900&auto=format%2Ccompress&fmt=webp&format=webp&w=940&dpr=1.0'
    ),
     News(
      title: '80pc of Sylhet division under flood water',
      description: 'The flood in Sylhet division influenced by incessant rain coupled .',
      imageUrl: 'https://images.prothomalo.com/prothomalo-english%2F2022-06%2F8331924d-b091-4ad2-9ce7-2304966b709c%2F3.jpg?rect=0%2C0%2C3873%2C2179&auto=format%2Ccompress&fmt=webp&format=webp&w=940&dpr=1.0'
    ),
    News(
      title: 'Bangladesh stare at defeat',
      description: 'Bangladesh are staring at the prospect of defeat inside three days after closing day two of the first Test on Friday ',
      imageUrl: 'https://images.prothomalo.com/prothomalo-english%2F2022-05%2F757edb33-9213-43a9-b523-284ad3051181%2FMominul.jpg?rect=0%2C0%2C2067%2C1163&auto=format%2Ccompress&fmt=webp&format=webp&w=940&dpr=1.0'
    ),
     News(
      title: 'Global Covid cases',
      description: 'The overall number of global Covid has surpassed 543 million amid a rise in new infections in parts of the world, UNB reports.',
      imageUrl: 'https://images.prothomalo.com/prothomalo-english%2F2021-08%2F257d8aa9-0204-41ec-8682-47e2576636d4%2F6.JPG?rect=0%2C0%2C3872%2C2178&auto=format%2Ccompress&fmt=webp&format=webp&w=940&dpr=1.0'
    ),
    News(
      title: 'China factory output',
      description: 'China’s factory output and retail sales remained weak in May, official data showed Wednesday,',
      imageUrl: 'https://images.prothomalo.com/prothomalo-english%2F2020-08%2F03f9c821-4db8-41fa-95e9-a05135b7c51c%2F5.JPG?rect=0%2C0%2C5035%2C2832&auto=format%2Ccompress&fmt=webp&format=webp&w=940&dpr=1.0'
    ),
     News(
      title: 'Italy sees first assisted',
      description: 'An Italian man, paralysed 12 years ago in a traffic accident, died on Thursday in Italy’s first case of assisted suicide,',
      imageUrl: 'https://images.prothomalo.com/prothomalo-english%2F2021-07%2F1365d7ff-7017-4963-b355-2c80320363d1%2Fsuicide.webp?rect=0%2C31%2C900%2C506&auto=format%2Ccompress&fmt=webp&format=webp&w=940&dpr=1.0'
    ),
    News(
      title: 'Power cut off in Sylhet',
      description: 'After Sunnamganj, power connection has been disconnected in Sylhet too. The authorities',
      imageUrl: 'https://images.prothomalo.com/prothomalo-english%2F2022-06%2F07195729-31f1-4bc9-a6f6-ec5dc157d001%2F9.jpg?auto=format%2Ccompress&format=webp&w=640&dpr=1.0'
    ),
     News(
      title: 'Landslide kills four',
      description: 'At least four people, including two siblings, have been killed in two separate landslides in the hilly areas of Barisal Ghona and Foy’s Lake in Chattogram.',
      imageUrl: 'https://images.prothomalo.com/prothomalo-english%2F2021-11%2F379764f4-e857-42cd-8d5d-dcc28d10f4e3%2FDead_Body_1.webp?rect=0%2C0%2C1600%2C900&auto=format%2Ccompress&fmt=webp&format=webp&w=940&dpr=1.0'
    ),
    News(
      title: 'EU backs Ukraine',
      description: 'urope sent a powerful symbol of solidarity with Ukraine on Friday as Brussels backed Kyiv',
      imageUrl: 'https://images.prothomalo.com/prothomalo-english%2F2022-06%2F81e05f1c-664e-47d2-894a-fc3030968282%2Fwhen_member_state_leaders_meet_at_their_brussels_summit__16554905013x2.webp?rect=0%2C29%2C510%2C287&auto=format%2Ccompress&fmt=webp&format=webp&w=940&dpr=1.0'
    ),

  ];
  

  @override
  State<NewsApp> createState() => _NewsAppState();
}

class _NewsAppState extends State<NewsApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('News App')),
    body: ListView.builder(
  padding: const EdgeInsets.all(8),
  itemCount: widget._posts.length,
  itemBuilder: (BuildContext context, int index) {
    return Dummy(title: widget._posts[index].title,
    imageUrl: widget._posts[index].imageUrl,
    description: widget._posts[index].description,
    onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { 
      return  DummyDetail(news: widget._posts[index]);
     })),);
    
  }
    )
    );
    
  }
}

class News{
  String? title;
  String? description;
  String? imageUrl;

  News({
    this.title,
    this.description,
    this.imageUrl
  });
}