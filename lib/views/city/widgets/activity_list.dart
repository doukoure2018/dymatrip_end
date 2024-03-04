import 'package:dymatrip_end/model/activity.dart';
import 'package:dymatrip_end/views/city/widgets/activity_card.dart';
import 'package:flutter/material.dart';
import 'package:dymatrip_end/datas/data.dart' as data;

class ActivityList extends StatelessWidget {
  final List<Activity> activities = data.activities;
  ActivityList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        return ActivityCard(
          activity: activities[index],
        );
      },
      itemCount: activities.length,
    );
  }
}
