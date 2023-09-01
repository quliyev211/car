import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:quliyevv/screens/car_homepage.dart';
import 'dart:convert';

import 'car_widgets/car_widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, dynamic> weatherData = {};

  @override
  void initState() {
    super.initState();
    fetchWeatherData();
  }

  Future<void> fetchWeatherData() async {
    try {
      final response = await http.get(Uri.parse('http://45.87.173.234:10/car'));

      if (response.statusCode == 200) {
        setState(() {
          weatherData = json.decode(response.body);
        });
      } else {
        throw Exception('Failed to load car data');
      }
    } catch (error) {
      print('Error fetching car data: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: const Color.fromARGB(255, 250, 250, 250),
              elevation: 0,
              title: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 1.0),
                  child: Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://static.vecteezy.com/system/resources/previews/000/365/820/original/question-mark-vector-icon.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      const Text(
                        'Quliyev Mahmud',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              actions: const [
                SizedBox(width: 20),
              ],
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(85.0),
                child: Container(
                  padding: const EdgeInsets.fromLTRB(30, 20, 30, 10),
                  alignment: Alignment.center,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        width: 1.0,
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search your car',
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              floating: false,
              pinned: false,
              snap: false,
            ),
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 5),
                  const SizedBox(height: 5),
                  if (weatherData.isNotEmpty)
                    SizedBox(
                      height: 100,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: weatherData['marks'].length,
                        itemBuilder: (context, index) {
                          final mark = weatherData['marks'][index];
                          return Row(
                            children: [
                              MarkWidget(
                                title: mark['title'],
                                image: mark['image'],
                              ),
                              const SizedBox(width: 30),
                            ],
                          );
                        },
                      ),
                    ),
                  const SizedBox(height: 15),
                  if (weatherData.isNotEmpty)
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.8,
                      ),
                      itemCount: weatherData['cars'].length,
                      itemBuilder: (context, index) {
                        final car = weatherData['cars'][index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => CarDetailsPage(
                                  title: car['title'],
                                  price: car['price'],
                                  image: car['image'],
                                  description: car['description'],
                                ),
                              ),
                            );
                          },
                          child: CarWidget(
                            title: car['title'],
                            description: car['description'],
                            price: car['price'],
                            image: car['image'],
                          ),
                        );
                      },
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
