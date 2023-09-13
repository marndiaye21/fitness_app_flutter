import 'package:flutter/material.dart';

class TrendingPlans extends StatelessWidget {
  TrendingPlans({super.key});
  final List menus = ["All", "Strenght training", "Cardio", "Flexibility", "Musculation"];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[900],
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)
            ),
          color: Colors.white
        ),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Trending Plans", style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500)),
                Text("View All", style: TextStyle(color: Colors.deepOrange, fontSize: 16))
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: menus.map((menuItem) {
                    return Container(
                      padding: const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
                      margin: const EdgeInsets.only(top: 20, right: 15),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: menuItem=="All" ? Colors.deepOrange : Colors.grey[300]),
                      child: Text(menuItem, style: TextStyle(color: menuItem == "All" ? Colors.white : Colors.black87, fontSize: 20),),
                    );
                  }).toList()
              ),
            )
          ],
        ),
      ),
    );
  }
}
