import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff100A2A),
      appBar: AppBar(
        toolbarHeight: 80.0,
        backgroundColor: Color(0xff100A2A),
        leading: Stack(
            ////when adding padding it changed image size
            clipBehavior: Clip.none,
            children: [
              Positioned(
                  left: 15,
                  top: 7,
                  child: Image.asset(
                    'assets/images/header_icon.png',
                  ))
            ]),
        title: const Center(
          child: Text(
            'WidgetMaker',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'CustomFont'
                // fontStyle: FontStyle.italic
                ),
          ),
        ),
        actions: [
          Image.asset('assets/images/action_icon.png'),
          SizedBox(width: 15)
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              InkWell(
                  onTap: () {},
                  child: Image.asset('assets/images/create_button.png')),
              const SizedBox(
                height: 40,
              ),
              const Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Row(
                  children: [
                    Text(
                      'My Widgets',
                      style: TextStyle(
                          color: Color(0xffB2A8EE),
                          fontWeight: FontWeight.bold,
                          fontFamily: 'CustomFont',
                          fontSize: 18),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: SizedBox(
                  height: 1400,
                  child: GridView(
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 50,
                              mainAxisSpacing: 50,
                              mainAxisExtent: 150,
                              childAspectRatio: 0.7),
                     
                            children: [
                              Container(
                                width: 200,
                                height: 100,
                                decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                      colors: [
                                        Colors.lightBlue,
                                        Colors.blue,
                                        Colors.blue,
                                        Color.fromARGB(214, 155, 53, 218),
                                        Color.fromARGB(214, 150, 54, 210)
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    //First widget
                                    Column(
                                      children: [
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Row(
                                            children: [
                                              Text(
                                                'Wed',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: 'CustomFont',
                                                    fontSize: 18),
                                              )
                                            ],
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Row(
                                            children: [
                                              Text(
                                                'O6',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 40),
                                              ),
                                              Text(
                                                '°',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 40),
                                              ),
                                            ],
                                          ),
                                         ),
                                         const Padding(
                                          padding: EdgeInsets.only(left: 20),
                                          child: Row(
                                            children: [
                                              Text(
                                                '07° /04°',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12),
                                              )
                                            ],
                                          ),
                                        ),
                                         SizedBox(
                                          height: 15,
                                         ),
                                         Padding(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                  'assets/images/Location.png'),
                                              SizedBox(
                                                width: 4,
                                              ),
                                              const Text(
                                                'Denver',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 13),
                                              ),
                                            ],
                                          ),
                                        ),
                                       ],
                                      ),
                                      Positioned(
                                        bottom: -10,
                                        right: -10,
                                        child: Image.asset('assets/images/sun.png' ,
                                        )
                                        ),
                              
                                         Positioned(
                                        bottom: -30,
                                        right: -40,
                                        child: Image.asset('assets/images/rain.png' , height: 70, )
                                        ),
                              
                                     
                                  ],
                                ),

                                
                              ),
                                //Second Widget
                               Container(
                                width: 50,
                                height: 100,
                                decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                      colors: [
                                        Color.fromARGB(131, 13, 7, 79),
                                        Color.fromARGB(131, 13, 7, 79),
                                        Color.fromARGB(131, 13, 7, 79),
                                        Color.fromARGB(213, 53, 89, 218),
                                        Color.fromARGB(213, 53, 89, 218)
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Column(
                                      children: [
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Row(
                                            children: [
                                              Text(
                                                'Tue',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: 'CustomFont',
                                                    fontSize: 18),
                                              )
                                            ],
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Row(
                                            children: [
                                              Text(
                                                '16',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 40),
                                              ),
                                              Text(
                                                '°',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 40),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(left: 20),
                                          child: Row(
                                            children: [
                                              Text(
                                                '29° /10°',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                  'assets/images/Location.png'),
                                              SizedBox(
                                                width: 4,
                                              ),
                                              const Text(
                                                'Toronto',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 13),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    
                              
                                         Positioned(
                                        bottom: -20,
                                        right: -20,
                                        child: Image.asset('assets/images/moonwindy.png' , height: 70,)
                                        ),
                                         Positioned(
                                        bottom: 0,
                                        right: -5,
                                        child: Image.asset('assets/images/sun.png' ,
                                        )
                                        ),
                              
                                      // Container(
                                      //   width: 100,
                                      //   height: 100,
                                      //   color: Colors.white,
                                      // )
                                  ],
                                ),

                               ),
                            
                            //Third Widget

                                Container(
                                width: 50,
                                height: 100,
                                decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                      colors: [
                                        Color.fromARGB(175, 119, 31, 186),
                                        Color.fromARGB(255, 119, 15, 137),
                                        Color.fromARGB(255, 119, 15, 137),
                                        Color.fromARGB(255, 119, 15, 137),
                                        Color.fromARGB(255, 119, 15, 137),
                                        Color.fromARGB(255, 155, 94, 94),
                                        Color.fromARGB(255, 201, 102, 60),
                                        Color.fromARGB(255, 201, 102, 60)
                                      ],
                                      begin: Alignment.bottomLeft,
                                      end: Alignment.topRight,
                                    ),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Column(
                                      children: [
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Row(
                                            children: [
                                              Text(
                                                'Mon',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: 'CustomFont',
                                                    fontSize: 18),
                                              )
                                            ],
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Row(
                                            children: [
                                              Text(
                                                '26',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 40),
                                              ),
                                              Text(
                                                '°',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 40),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(left: 20),
                                          child: Row(
                                            children: [
                                              Text(
                                                '20° /30°',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                  'assets/images/Location.png'),
                                              SizedBox(
                                                width: 4,
                                              ),
                                              const Text(
                                                'LA',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 13),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    
                              
                                        //  Positioned(
                                        // bottom: -20,
                                        // right: -20,
                                        // child: Image.asset('assets/images/moonwindy.png' , height: 70,)
                                        // ),
                                         Positioned(
                                        bottom: -30,
                                        right: -30,
                                        child: Image.asset('assets/images/sun.png' ,
                                        )
                                        ),
                              
                                      
                                  ],
                                ),

                               ),     

                                //Fourth Widget
                               Container(
                                width: 50,
                                height: 100,
                                decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                      colors: [
                                    Color(0xff0B0B0B),
                                    Color.fromARGB(255, 43, 7, 70),
                                    Color.fromARGB(255, 43, 7, 70),

                                     Color(0xff7269FF),

                                      ],
                                      begin: Alignment.bottomRight,
                                      end: Alignment.topLeft,
                                    ),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Column(
                                      children: [
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Row(
                                            children: [
                                              Text(
                                                'Thu',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: 'CustomFont',
                                                    fontSize: 18),
                                              )
                                            ],
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Row(
                                            children: [
                                              Text(
                                                '19',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 40),
                                              ),
                                              Text(
                                                '°',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 40),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(left: 20),
                                          child: Row(
                                            children: [
                                              Text(
                                                '12° /10°',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                  'assets/images/Location.png'),
                                              SizedBox(
                                                width: 4,
                                              ),
                                              const Text(
                                                'Florida',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 13),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    
                              
                                        //  Positioned(
                                        // bottom: -20,
                                        // right: -20,
                                        // child: Image.asset('assets/images/moonwindy.png' , height: 70,)
                                        // ),
                                         Positioned(
                                        bottom: -60,
                                        right: -30,
                                        child: Image.asset('assets/images/bolt.png' ,
                                        )
                                        ),
                              
                                     
                                  ],
                                ),

                               ),    

                               //Fifth Widget
                                Container(
                                width: 50,
                                height: 100,
                                decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                      colors: [
                                    Colors.blue,
                                    Color.fromARGB(255, 23, 58, 199),
                                    Color.fromARGB(255, 8, 4, 131),
                                    Color.fromARGB(255, 74, 4, 131),
                                    Color.fromARGB(255, 200, 57, 213),
                                    Color.fromARGB(255, 194, 64, 55)
                              
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Column(
                                      children: [
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Row(
                                            children: [
                                              Text(
                                                'Fri',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: 'CustomFont',
                                                    fontSize: 18),
                                              )
                                            ],
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Row(
                                            children: [
                                              Text(
                                                '17',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 40),
                                              ),
                                              Text(
                                                '°',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 40),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(left: 20),
                                          child: Row(
                                            children: [
                                              Text(
                                                '15° /12°',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                  'assets/images/Location.png'),
                                              SizedBox(
                                                width: 4,
                                              ),
                                              const Text(
                                                'Cansas',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 13),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    
                              
                                        //  Positioned(
                                        // bottom: -20,
                                        // right: -20,
                                        // child: Image.asset('assets/images/moonwindy.png' , height: 70,)
                                        // ),
                                         Positioned(
                                        bottom: -25,
                                        right: -40,
                                        child: Image.asset('assets/images/Tornado.png' ,
                                        )
                                        ),
                              
                                     
                                  ],
                                ),

                               ),    

                               //sixth Widget
                                Container(
                                width: 50,
                                height: 100,
                                decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                      colors: [
                                   Color.fromARGB(255, 225, 115, 37),
                                   Color.fromARGB(255, 163, 59, 21),
                                   Color.fromARGB(255, 139, 6, 6),
                                   Color.fromARGB(255, 139, 6, 6),
                                   Color.fromARGB(255, 113, 3, 3),
                              
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Column(
                                      children: [
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Row(
                                            children: [
                                              Text(
                                                'Sat',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: 'CustomFont',
                                                    fontSize: 18),
                                              )
                                            ],
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Row(
                                            children: [
                                              Text(
                                                '12',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 40),
                                              ),
                                              Text(
                                                '°',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 40),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(left: 20),
                                          child: Row(
                                            children: [
                                              Text(
                                                '8° /12°',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                  'assets/images/Location.png'),
                                              SizedBox(
                                                width: 4,
                                              ),
                                              const Text(
                                                'NY',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 13),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    

                                     Positioned(
                                        bottom: -10,
                                        right: 0,
                                        child: Image.asset('assets/images/sun.png' ,
                                        )
                                        ),
                              
                                         Positioned(
                                        bottom: -27,
                                        right: -22,
                                        child: Image.asset('assets/images/rainy2.png' , height: 70,)
                                        ),
                                        
                              
                                     
                                  ],
                                ),

                               ),    
                                                      
                            ],
                      ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
