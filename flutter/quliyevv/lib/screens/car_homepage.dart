import 'package:flutter/material.dart';

class CarDetailsPage extends StatelessWidget {
  final String title;
  final int price;
  final String image;
  final String description;

  CarDetailsPage({
    required this.title,
    required this.price,
    required this.image,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(title),
        backgroundColor: const Color.fromARGB(214, 0, 0, 0),
      ),
      body: Column(
        children: [
          Container(
            color: const Color.fromARGB(214, 0, 0, 0),
            child: Image.network(
              image,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                color: Colors.white,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          description,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 133, 128, 128),
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'Features',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Icon(Icons.chair,
                                    size: 30,
                                    color: Color.fromARGB(255, 0, 0, 0)),
                                Text('Feature 1'),
                                Text('4 seats '),
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.speed_outlined,
                                    size: 30,
                                    color: Color.fromARGB(255, 0, 0, 0)),
                                Text('Highest Speed'),
                                Text('300 KM/H'),
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.engineering_sharp,
                                    size: 30,
                                    color: Color.fromRGBO(0, 0, 0, 1)),
                                Text('Engine Output'),
                                Text('500 HP'),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            '\$$price, Dollars',
                            style: const TextStyle(
                              fontSize: 23,
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Container(
                          alignment: Alignment.center,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              padding: const EdgeInsets.symmetric(
                                vertical: 16,
                                horizontal: 32,
                              ),
                              primary: Colors.black,
                              textStyle: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            child: const Text('Buy Now'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
