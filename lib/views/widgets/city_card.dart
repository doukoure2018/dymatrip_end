import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  final String name;
  final String imageUrl;
  final bool checked;
  final VoidCallback updateChecked;
  // final void Function() updateChecked;
  const CityCard({
    required this.name,
    required this.imageUrl,
    required this.checked,
    required this.updateChecked,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 15,
      child: Container(
        height: 150.0,
        alignment: Alignment.center,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Ink.image(
              fit: BoxFit.cover,
              image: AssetImage(
                imageUrl,
              ),
              child: InkWell(
                onTap: updateChecked,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          checked ? Icons.star : Icons.star_border,
                          color: Colors.yellowAccent,
                          size: 40,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
