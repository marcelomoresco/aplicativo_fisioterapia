import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:phsyoterapy_test/widgets/popular_therapist.dart';

import '../widgets/symptoms_category.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List therapistList = [
    ['Dr Marcelo Adriel Moresco', 'Ortopedista', 140, Icons.man],
    ['Dr Alana Rauber Sbardelatti', 'Dermatologista', 200, Icons.woman],
    ['Dr Adelirio Moresco', 'Clinico Geral', 120, Icons.man],
    ['Maristela', 'Fisioterapeuta', 90, Icons.woman],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Icon(
                      Icons.notifications_active_outlined,
                      color: Color.fromARGB(255, 12, 107, 184),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Icon(
                      Icons.person_pin_outlined,
                      color: Color.fromARGB(255, 12, 107, 184),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "Hello,",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                  Text(
                    " Marcelo 👋",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 130,
                        width: 159,
                        decoration: BoxDecoration(
                          color: const Color(0xFF1E59D9),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      Positioned(
                        top: 20,
                        left: 25,
                        child: Container(
                          height: 32,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: const Icon(
                            Icons.sports_gymnastics_outlined,
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 20,
                        right: 30,
                        child: Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                      ),
                      const Positioned(
                        bottom: 20,
                        left: 25,
                        child: Text(
                          "Start Training",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 130,
                        width: 160,
                        decoration: BoxDecoration(
                          color: const Color(0xFFE3EBFF),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      Positioned(
                        top: 20,
                        left: 25,
                        child: Container(
                          height: 32,
                          width: 30,
                          decoration: BoxDecoration(
                            color: const Color(0xFF1E59D9),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: const Icon(Icons.calendar_month_outlined,
                              color: Colors.white),
                        ),
                      ),
                      const Positioned(
                        bottom: 40,
                        left: 25,
                        child: Text(
                          "Your",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Positioned(
                        bottom: 20,
                        left: 25,
                        child: Text(
                          "treatment plan",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "What are your symptoms?",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              // Symphthons
              const SymptomsCategories(),

              const SizedBox(
                height: 20,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Popular Therapists",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "See all",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: therapistList.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return PopularTherapistWidget(
                        doctorName: therapistList[index][0],
                        especifyJob: therapistList[index][1],
                        hourlyRate: therapistList[index][2],
                        icon: therapistList[index][3],
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: const Color(0xFF1E59D9),
        backgroundColor: Colors.grey.shade100,
        animationDuration: const Duration(milliseconds: 350),
        items: const [
          Icon(Icons.home, color: Colors.white),
          Icon(Icons.chat, color: Colors.white),
          Icon(Icons.calendar_month, color: Colors.white),
          Icon(Icons.person_pin_rounded, color: Colors.white),
        ],
      ),
    );
  }
}
