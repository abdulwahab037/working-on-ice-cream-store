import 'package:flutter/material.dart';

class DountTile extends StatelessWidget {
  final String dountFlavor;
  final String dountPrice;
  final dountColor;
  final String ImageName;
  final double borderRadius = 12;

  const DountTile(
      {super.key,
      required this.dountFlavor,
      required this.dountPrice,
      this.dountColor,
      required this.ImageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
            color: dountColor[50],
            borderRadius: BorderRadius.circular(borderRadius)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: dountColor[100],
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(borderRadius),
                            topRight: Radius.circular(borderRadius))),
                    padding: EdgeInsets.all(12),
                    child: Text(
                      '\$' + dountPrice,
                      style: TextStyle(
                          color: dountColor[800],
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 24),
              child: Image.asset(ImageName),
            ),
            Text(
              dountFlavor,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              'Ab Wahab',
              style: TextStyle(color: Colors.grey[600]),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.pink[400],
                  ),
                  Icon(
                    Icons.add,
                    color: Colors.grey[800],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
