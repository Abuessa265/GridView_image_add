import 'package:flutter/material.dart';

class Prac extends StatefulWidget {
  @override
  State<Prac> createState() => _PracState();
}

class _PracState extends State<Prac> {
  List<String> ImageList = [
    'images/aa.JPG',
    'images/abuessa.png',
    'images/AbuessaGlass.png',
    'images/aa.JPG',
    'images/abuessa.png',
    'images/AbuessaGlass.png',
    'images/aa.JPG',
    'images/abuessa.png',
    'images/AbuessaGlass.png',
    'images/aa.JPG',
    'images/abuessa.png',
    'images/AbuessaGlass.png',
    'images/aa.JPG',
    'images/abuessa.png',
    'images/AbuessaGlass.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photo'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.8,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
          ),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 0.0,
                mainAxisSpacing: 14.0),
            itemCount: ImageList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(4),
                child: Image.asset(
                  ImageList[index],
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
