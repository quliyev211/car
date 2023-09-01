import 'package:flutter/material.dart';

class CarWidget extends StatelessWidget {
  final String title;
  final int price;
  final String image;
  final String description;

  CarWidget({
    required this.title,
    required this.price,
    required this.image,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    color: Color.fromARGB(255, 223, 218, 218),
                  ),
                  child: Image.network(image, fit: BoxFit.cover),
                ),
              ),
              Positioned(
                top: 5,
                left: 5,
                child: IconButton(
                  icon: const Icon(Icons.favorite_border),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Price: $price',
                  style: const TextStyle(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MarkWidget extends StatelessWidget {
  final String title;
  final String image;

  MarkWidget({
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(),
      elevation: 0,
      child: Column(
        children: [
          Container(
            width: 70,
            height: 66,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: CircleAvatar(
                backgroundImage: NetworkImage(image),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(title,
                style: const TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Color.fromARGB(255, 54, 0, 0),
                )),
          ),
        ],
      ),
    );
  }
}
