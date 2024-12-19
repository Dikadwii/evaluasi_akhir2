import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
            backgroundColor: const Color.fromARGB(245, 255, 255, 255),
            appBar: AppBar(
              title: const Text('Pecel'),
              backgroundColor: const Color.fromARGB(255, 255, 152, 42),
            ),
            body: Row(
              children: [
                const Expanded(
                  flex: 40,
                  child: SideInfo(),
                ),
                Expanded(
                  flex: 60,
                  child: Image.asset(
                  'assets/pecel.jpg',
                  scale: 0.4,
                  ),
                )
              ],
            )
          )
        );
  }
}

class SideInfo extends StatelessWidget {
  const SideInfo({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Container(
      width: 300,
      color: const Color.fromARGB(245, 255, 255, 255),
      child: Padding(
        padding: const EdgeInsets.all(22),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 156, 74),
                  border: Border.all(color: Colors.black, width: 1.5)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'nasi pecel',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
                width: double.infinity,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 167, 95),
                    border: Border.all(color: Colors.black, width: 1.5)),
                child: const Text(
                    'Pecel terdiri dari sayuran seperti sayur bayam, kacang panjang,kol atau kubis, kecambah atau taoge, dan timun sing di beri sambal pecel atau bumbu kacang. Tapi di wilayah kebumen, pecel sering pula dibubuhi dengan bahan-bahan (sayuran) sing berbau merangsang.')),
            const SizedBox(
              height: 10,
            ),
            Container(
                width: double.infinity,
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 140, 46),
                    border: Border.all(color: const Color.fromARGB(255, 224, 185, 29), width: 1.5)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star_rounded,
                          size: 17,
                        ),
                        Icon(
                          Icons.star_rounded,
                          size: 17,
                        ),
                        Icon(
                          Icons.star_rounded,
                          size: 17,
                        ),
                        Icon(
                          Icons.star_rounded,
                          size: 17,
                        ),
                        Icon(
                          Icons.star_outline_rounded,
                          size: 17,
                        ),
                      ],
                    ),
                    Text('150 Reviews', style: TextStyle( fontSize: 13),)
                  ],
                )),
            const SizedBox(
              height: 10,
            ),
            Container(
                width: double.infinity,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 134, 35),
                    border: Border.all(color: const Color.fromARGB(255, 255, 119, 0), width: 1.5)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.kitchen_outlined,
                          color: Color.fromARGB(255, 104, 70, 45),
                        ),
                        SizedBox(height: 5),
                        Text('PREP:', style: TextStyle(fontSize: 12)),
                        SizedBox(height: 5),
                        Text('3 min', style: TextStyle(fontSize: 12))
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.access_time_rounded,
                            color: Color.fromARGB(255, 104, 70, 45)),
                        SizedBox(height: 5),
                        Text('COOK:', style: TextStyle(fontSize: 12)),
                        SizedBox(height: 5),
                        Text('10 min', style: TextStyle(fontSize: 12))
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.restaurant_rounded,
                            color: Color.fromARGB(255, 104, 70, 45)),
                        SizedBox(height: 5),
                        Text('FEEDS:', style: TextStyle(fontSize: 12)),
                        SizedBox(height: 5),
                        Text('3-5', style: TextStyle(fontSize: 12))
                      ],
                    )
                  ],
                )
              ),
          ],
        ),
      ),
    );
  }
}

