import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Konverter Suhu"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                ],
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Masukkan Suhu Dalam Celcius'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text("Suhu dalam Kelvin",
                          style: TextStyle(height: 1.5, fontSize: 20)),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text("Suhu dalam Reamor",
                          style: TextStyle(height: 1.5, fontSize: 20)),
                    ],
                  )
                ],
              ),
              MaterialButton(
                onPressed: null,
                color: Colors.blue,
                textColor: Colors.white,
                child: Text("Konversi Suhu"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
