import 'package:flutter/material.dart';

class PhotoOfDog extends StatefulWidget {
  const PhotoOfDog({super.key});

  @override
  State<PhotoOfDog> createState() => _PhotoOfDogState();
}

class _PhotoOfDogState extends State<PhotoOfDog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: 7,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              color: Colors.grey,
            ),
          );
        },
      ),
    );
  }
}
