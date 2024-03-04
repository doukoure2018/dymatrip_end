import 'package:dymatrip_end/model/activity.dart';
import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  final Activity activity;
  const ActivityCard({
    super.key,
    required this.activity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150.0,
      margin: const EdgeInsets.all(1),
      child: Image.asset(
        activity.imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
