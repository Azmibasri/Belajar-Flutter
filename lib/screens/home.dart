import 'package:flutter/material.dart';
import 'package:latihan_flutter/widgets/search_widgets.dart';
import 'package:latihan_flutter/widgets/normal_banner_widget.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.square),
        title: Center(child: Text("Home",style: TextStyle(fontSize: 14),)),
        foregroundColor: Colors.blue,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Hello Azmi!",style:TextStyle(color: Colors.blue,fontSize: 24,fontWeight: FontWeight.bold)),
                Text("Good Night",style: TextStyle(color: const Color.fromARGB(255, 118, 186, 242),fontSize: 14),)
              ],
            ),
            Cari(),
            BannerN(title: "Welcome!", deskripsi: "les's schedule your projects"),
        ],
        )
      )
    );
  }
}

