import 'package:flutter/material.dart';

import '../tile/dount_tile.dart';

class DountTab extends StatelessWidget {
  List dountOnSale = [
    ["ice cream", "36", Colors.blue, "lib/img/donut.png"],
    ["choco", "40", Colors.red, "lib/img/donut1.png"],
    ["Roll cream", "30", Colors.purple, "lib/img/donut2.png"],
    ["dount", "25", Colors.brown, "lib/img/donut.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: dountOnSale.length,
        padding: EdgeInsets.all(12),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1 / 1.9),
        itemBuilder: (context, index) {
          return DountTile(
            dountFlavor: dountOnSale[index][0],
            dountPrice: dountOnSale[index][1],
            dountColor: dountOnSale[index][2],
            ImageName: dountOnSale[index][3],
          );
        });
  }
}
