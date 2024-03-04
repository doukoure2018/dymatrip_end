import 'package:dymatrip_end/views/city/city.dart';
import 'package:flutter/material.dart';

main() {
  runApp(const Dymatrip());
}

class Dymatrip extends StatelessWidget {
  const Dymatrip({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dymatrip",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const Home(),
      home: City(),
    );
  }
}
