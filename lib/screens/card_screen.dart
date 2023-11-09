import 'package:flutter/material.dart';

import 'package:fl_components/Widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        //Añade un espacio igual a la izquiera y a la derecha de nuestra tarjeta
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [

          CustomCardType1(),
          //Agrega un contenedro vacio para separar
          SizedBox(height: 10,),
          CustomCardType2(imageUrl: 'https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/media/image/2021/11/halo-infinite-2535867.jpg?tf=3840x', 
          name: 'The master Chief',),
          SizedBox(height: 20,),
          CustomCardType2(imageUrl: 'https://cdn.mos.cms.futurecdn.net/GfzwEBy5XYUZnfV5tkZ7dH-1200-80.jpg', 
          name: 'Halo 4',),
          SizedBox(height: 20,),
          CustomCardType2(imageUrl: 'https://cdn.mos.cms.futurecdn.net/y2htnxw77aNYvQ4oWmVj23-1200-80.jpg', ),
          SizedBox(height: 20,),
          CustomCardType2(imageUrl: 'https://cdn.vox-cdn.com/thumbor/SGkmSZQ4OeAvr1KLwaRUCv37Xg0=/0x0:1920x1117/1400x933/filters:focal(584x0:890x306):no_upscale()/cdn.vox-cdn.com/uploads/chorus_image/image/70080019/Halo_TMCC_Reach_KeyArt_Vert_Final.0.jpg', 
          name: 'Equipo Noble',),

        ],
      )
    );
  }
}

