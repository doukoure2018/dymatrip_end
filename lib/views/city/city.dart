import 'dart:ffi';

import 'package:dymatrip_end/model/activity.dart';
import 'package:dymatrip_end/model/trip.model.dart';
import 'package:dymatrip_end/views/city/widgets/activity_list.dart';
import 'package:dymatrip_end/views/city/widgets/trip_activity_list.dart';
import 'package:dymatrip_end/views/city/widgets/trip_overview.dart';
import 'package:flutter/material.dart';
import 'package:dymatrip_end/datas/data.dart' as data;

class City extends StatefulWidget {
  final List<Activity> activities = data.activities;

  City({super.key});

  @override
  State<City> createState() => _CityState();
}

class _CityState extends State<City> {
  // instanciation de la classe Trip
  late Trip mytripInit;
  late int index;

  @override
  void initState() {
    super.initState();
    index = 0;
    mytripInit = Trip(city: "Paris", activities: [], date: null);
  }

  void setDate() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now().add(
        const Duration(days: 1),
      ),
      firstDate: DateTime.now(),
      lastDate: DateTime(2025),
    ).then((newDate) {
      if (newDate != null) {
        setState(() {
          mytripInit.date = newDate;
        });
      }
    });
  }

  void switchIndex(newIndex) {
    setState(() {
      index = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Organisation du Voyage",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        leading: const Icon(
          Icons.chevron_left,
          color: Colors.white,
        ),
        actions: const [
          Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        ],
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TripOverview(
              mytrip: mytripInit,
              selectDate: setDate,
            ),
            Expanded(
              child: index == 0 ? ActivityList() : const TripActivityList(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: "Decouverte",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: "Mes activités",
          ),
        ],
        onTap: switchIndex,
      ),
    );
  }
}
