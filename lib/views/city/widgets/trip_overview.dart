import 'package:dymatrip_end/model/trip.model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TripOverview extends StatelessWidget {
  final Trip mytrip;
  final Function() selectDate;

  const TripOverview({
    super.key,
    required this.mytrip,
    required this.selectDate,
  });

  double get amount {
    return 0.0;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.00),
      height: 200.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Paris",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  mytrip.date != null
                      ? DateFormat('d/M/y').format(mytrip.date!)
                      : "Selectionner une Date",
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: selectDate,
                child: const Text(
                  "Selectionner une date",
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Expanded(
                child: Text(
                  "Montant / Personne",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Text(
                " $amount \$",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
