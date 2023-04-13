import 'package:flutter/material.dart';

class PhoneDetail extends StatelessWidget {
  const PhoneDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 10,
        title: Text('Technicial Specifications',style: TextStyle(fontFamily: "Oswald",color: Colors.black),),
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.grey[800],),
        onPressed: () => Navigator.of(context).pop(),
        
         ),
        
      ),
      body: ListView(children: [
        
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Material(
            borderRadius: BorderRadius.circular(18),
            elevation: 4,
            color: Colors.white,
            child: Container(
              width: double.infinity,
              height: 570,
              padding: EdgeInsets.all(16),
              decoration: deko(),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                              image: AssetImage('images/apple.png'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'MacBook Pro',
                              style: TextStyle(
                                //fontFamily: 'CrimsonText',
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              'A P P L E',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey.shade300),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 50, right: 40, bottom: 10),
                        child: Container(
                          width: 250,
                          height: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                                image: AssetImage('images/laptop.png'),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.black54,
                    
                  ),
                 Text("Hardware Features",style: TextStyle(fontFamily:"Oswald" ,fontSize: 20),),
                  SizedBox(height: 10,),
                  Text("Colour options. Silver Space Gray. Price. 1500\$ TL Chip. Apple M2 Pro chip. Screen. Liquid Retina XDR display. Memory. 16 GB. Battery & Power 3 Up to 18 hours of movie viewing from the Apple TV app. Storage 4 512GB. Charging and Expansion Options. SDXC card slot.",style: TextStyle(color: Colors.black),),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Material(
            borderRadius: BorderRadius.circular(18),
            elevation: 4,
            color: Colors.white,
            child: Container(
              width: double.infinity,
              height: 570,
              padding: EdgeInsets.all(16),
              decoration: deko(),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                              image: AssetImage('images/apple.png'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'iPad Pro',
                              style: TextStyle(
                                //fontFamily: 'CrimsonText',
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              'A P P L E',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey.shade300),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 50, right: 40, bottom: 10),
                        child: Container(
                          width: 240,
                          height: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                                image: AssetImage('images/tablet.png'),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.black54,
                    
                  ),
                  Text("Hardware Features",style: TextStyle(fontFamily:"Oswald" ,fontSize: 20),),
                  SizedBox(height: 10,),
                  Text("8-core CPU with 4 performance cores and 4 efficiency cores. 10 core GPU. 16 core Neural Engine. 100GBps memory bandwidth. 8GB RAM in models with 128GB, 256GB or 512GB storage capacity. 16GB RAM on models with 1TB or 2TB storage capacity.",style: TextStyle(color: Colors.black),),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Material(
            borderRadius: BorderRadius.circular(18),
            elevation: 4,
            color: Colors.white,
            child: Container(
              width: double.infinity,
              height: 570,
              padding: EdgeInsets.all(16),
              decoration: deko(),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                              image: AssetImage('images/apple.png'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'iPhone 14 Pro',
                              style: TextStyle(
                                //fontFamily: 'CrimsonText',
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              'A P P L E',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey.shade300),
                            ),
                            
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 250,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                              image: AssetImage('images/telefone.png'),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ],
                  ),
                  
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: Colors.black54,
                  ),
                 Text("Hardware Features",style: TextStyle(fontFamily:"Oswald",fontSize: 20),),
                  SizedBox(height: 10,),
                  Text("Display: 6.1 inches, 2556 x 1179 pixels 460ppi, 120Hz, Always On Display, 1000 nits maximum screen brightness Processor: Apple A16 Bionic chip. Memory: 6GB RAM (LPDDR5 Storage: 128GB / 256GB / 512GB / 1TB. Rear camera: 48MP main camera, 12MP ultra-wide camera, 12MP 2x telephoto.",style: TextStyle(color: Colors.black),),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Material(
            borderRadius: BorderRadius.circular(18),
            elevation: 4,
            color: Colors.white,
            child: Container(
              width: double.infinity,
              height: 570,
              padding: EdgeInsets.all(16),
              decoration: deko(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                              image: AssetImage('images/apple.png'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'iPhone 13',
                              style: TextStyle(
                                //fontFamily: 'CrimsonText',
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              'A P P L E',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey.shade300),
                            ),
                            
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 250,
                        height: 290,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                              image: AssetImage('images/telefon2.png'),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: Colors.black54,
                  ),
                  Center(child: Text("Hardware Features",style: TextStyle(fontFamily:"Oswald" ,fontSize: 20),)),
                  SizedBox(height: 10,),
                  Text("Screen. 6.1 inch Display Pixel. 1170 x 2532. Water Resistant YES - IPX8. Dustproof YES - IP6X. Rear Camera. 12 MP. Rear Camera. 2 Pieces. Front camera. 12 MP. Video. 2160p 4K UHD. CPU Core. CPU SPEED. 3.22GHz. RAM. 4GB. Internal Memory. 128GB - 256GB - 512GB. 4.5G. THERE IS. 5G. THERE IS. Wi-Fi 6. YES. Battery. 3227mAh.",style: TextStyle(color: Colors.black),),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }

  BoxDecoration deko() {
    return BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            offset: const Offset(0, 20),
            blurRadius: 30,
            spreadRadius: -5,
          ),
        ],
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
            colors: [
              Colors.grey.shade600,
              Colors.white,
              Colors.white,
              Colors.grey.shade600,
            ],
            stops: const [
              0.1,
              0.3,
              0.9,
              1.9,
            ]));
  }
}
