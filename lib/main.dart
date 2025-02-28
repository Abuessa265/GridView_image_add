import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/code/prac.dart';
import 'package:flutter_application_1/widgets/container.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) => MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hello',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Essential code'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hello i am a software engineer now i job a software compny and i want to be a grate engineer in the world so i need hard work for a grate engineer if you hard work then you will be success otherwise you cannot success',
                textAlign: TextAlign.center,
                maxLines: 2,
                style: TextStyle(overflow: TextOverflow.ellipsis),
              ),
              Icon(Icons.android),
              Image.asset(
                'images/AbuessaGlass.png',
                height: 300,
                width: 300,
              ),
              Image.asset(
                'images/abuessa.png',
                height: 300,
                width: 300,
              ),
              SizedBox(
                height: 20,
              ),
              containerBtn(
                TxtColor: Colors.red,
                bgColor: Colors.teal,
                borderRadius: 20,
                onPres: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Prac()));
                },
                txt: 'Next',
                borderClr: Colors.amber,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
