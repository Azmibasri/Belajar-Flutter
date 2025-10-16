import 'package:flutter/material.dart';

class BannerN extends StatelessWidget {
  final String title;
  final String deskripsi;

  const BannerN({super.key, required this.title, required this.deskripsi});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: BorderSide(color: Colors.blue,width: 2),
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 100,
        child: Row(
            children: [
              Padding(padding: EdgeInsets.all(20),child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,style: TextStyle(color: Colors.blue,fontSize: 16,fontWeight: FontWeight.bold),),
                  Text(deskripsi)
                ],
              )),
              Center(
                child: 
                Padding(padding: EdgeInsets.symmetric(vertical: 35),child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(Icons.people)
                  ],
                ),),
              )
            ],
          ),
                
        ),
    );
  }
}
