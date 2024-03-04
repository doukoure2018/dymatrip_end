import 'package:dymatrip_end/views/widgets/city_card.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List cities = [
    {"name": "Paris", "imageUrl": "assets/images/paris.jpg", "checked": false},
    {"name": "Lyon", "imageUrl": "assets/images/lyon.jpg", "checked": false},
    {
      "name": "Barcelone",
      "imageUrl": "assets/images/barcelone.jpg",
      "checked": false
    },
  ];

  void switchChecked(city) {
    int indexOfCity = cities.indexOf(city);
    setState(() {
      cities[indexOfCity]['checked'] = !cities[indexOfCity]['checked'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.home),
          onPressed: () {},
        ),
        title: const Text("Dymatrip"),
        backgroundColor: Colors.blueAccent,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_horiz),
          ),
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ...cities.map((city) {
                return CityCard(
                  name: city['name'],
                  imageUrl: city['imageUrl'],
                  checked: city['checked'],
                  updateChecked: () {
                    switchChecked(city);
                  },
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
