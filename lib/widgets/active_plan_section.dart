import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ActivePlanSection extends StatelessWidget {
  const ActivePlanSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        color: Colors.grey[900],
        height: 305,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("My Active Plans",
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(width: 1, color: Colors.white)),
                        child: const Icon(Icons.more_horiz_rounded,
                            size: 25, color: Colors.white)),
                  ],
                ),
              ),
              const Padding(
                  padding: EdgeInsets.all(10),
                  child: Divider(color: Colors.grey, height: 2)),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      width: 90,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/flutter1.jpg"))),
                    ),
                    const SizedBox(width: 20),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("STRENGTH TRAINING",
                            style: TextStyle(
                                color: Colors.deepOrange,
                                fontWeight: FontWeight.w700)),
                        SizedBox(height: 2),
                        Text("Beginner Hand Exercise",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                                fontWeight: FontWeight.w700)),
                        SizedBox(height: 6),
                        Row(
                          children: [
                            Text("5 exercise",
                                style: TextStyle(
                                    color: Colors.white70, fontSize: 17)),
                            SizedBox(width: 5),
                            Text(".",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 23)),
                            SizedBox(width: 5),
                            Text("2 sets",
                                style: TextStyle(
                                    color: Colors.white70, fontSize: 17)),
                            SizedBox(width: 5),
                            Text(".",
                                style: TextStyle(
                                    color: Colors.white70, fontSize: 23)),
                            SizedBox(width: 5),
                            Text("10 min",
                                style: TextStyle(
                                    color: Colors.white70, fontSize: 17)),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 10, top: 2, right: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                      decoration: BoxDecoration(
                          color: Colors.grey[700],
                          borderRadius: BorderRadius.circular(15)),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 8, top: 4),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Burned calories",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white70)),
                            Text("171 Kcal",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700)),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                      decoration: BoxDecoration(
                          color: Colors.grey[700],
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8, top: 4),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Progress",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white70)),
                            const Text("68%",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700)),
                            Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey, width: 2),
                                      borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(25),
                                          bottomRight: Radius.circular(25))),
                                  width: 140,
                                ),
                                Positioned(child:  Container(
                                  width: 70,
                                  color: Colors.deepOrange,
                                  height: 4,
                                ))
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
