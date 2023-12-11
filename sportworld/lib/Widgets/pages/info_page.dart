import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class InfoPage extends StatefulWidget {
  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  final List<Widget> myItems = [
    Image.asset("assets/images/camp.jpg"),
    Image.asset("assets/images/campo.jpg"),
    Image.asset("assets/images/info.jpg"),
    Image.asset("assets/images/cancha5.jpeg"),
    Image.asset("assets/images/footbal.jpeg"),
    Image.asset("assets/images/comuna.jpeg"),
    Image.asset("assets/images/fireball.jpeg"),
  ];

  int myCurrentIndex = 0; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(10),
          width: double.infinity,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 225,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  children: [
                    CarouselSlider(
                      options: CarouselOptions(
                        autoPlay: true,
                        height: 200,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        autoPlayAnimationDuration: const Duration(milliseconds: 10000),
                        autoPlayInterval: const Duration(seconds: 5),
                        enlargeCenterPage: true,
                        aspectRatio: 2.0,
                        onPageChanged: (index, reason) => {
                          setState(() {
                            myCurrentIndex = index;
                          }),
                        },
                    ),
                    items: myItems.map((item) {
                          return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                            ),
                            child: item,
                          );
                        }).toList(),
                  ),
                  SizedBox(height: 10),
                  AnimatedSmoothIndicator(activeIndex: myCurrentIndex, 
                  count: myItems.length,
                  effect: const WormEffect(
                    dotHeight: 8,
                    dotWidth: 8,
                    spacing: 10,
                    dotColor: Colors.white,
                    activeDotColor: Colors.blue,
                    paintStyle: PaintingStyle.fill,
                  ),)
                  ],
                )
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 53, 52, 52),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.book,  
                            color: Colors.white,  
                            size: 30,  
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Manual Administrativo',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 53, 52, 52),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.emoji_events_rounded,  
                            color: Colors.white,  
                            size: 30,  
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Torneos',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 53, 52, 52),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.border_color_outlined,  
                            color: Colors.white,  
                            size: 30,  
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Reseñas',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 53, 52, 52),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.engineering_rounded,  
                            color: Colors.white,  
                            size: 30,  
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Configuración',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.black,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Administración',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Ver cualquier información sobre Sport World',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: FractionallySizedBox(
                      widthFactor: 1, // Ajusta según tus necesidades
                      heightFactor: 0.8, // Ajusta según tus necesidades
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/images/imgani.jpeg",
                          width: 600,
                          height: 100,
                        ),
                      ),
                    ),
                  ),
                ),
                ],
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}
