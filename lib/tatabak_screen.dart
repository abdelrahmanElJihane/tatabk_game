import 'package:flutter/material.dart';
import 'dart:math';

class TatabkGameScreen extends StatefulWidget {
  const TatabkGameScreen({Key? key}) : super(key: key);

  @override
  State<TatabkGameScreen> createState() => _TatabkGameScreenState();
}

class _TatabkGameScreenState extends State<TatabkGameScreen> {
  int rightNumberImage = 1;
  int leftNumberImage = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 24, 132, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 7, 55, 230),
        centerTitle: true,
        title: const Text(
          'تطابق الصور',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 35,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            leftNumberImage == rightNumberImage
                ? 'مبروك لقد نجحت'
                : 'حاول مرة أخرى',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        leftNumberImage = Random().nextInt(8) + 1;
                        rightNumberImage = Random().nextInt(8) + 1;
                      });
                    },
                    child: Image.asset('images/image-$leftNumberImage.png'),
                  ),
                ),
                Expanded(
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          leftNumberImage = Random().nextInt(8) + 1;
                          rightNumberImage = Random().nextInt(8) + 1;
                        });
                      },
                      child: Image.asset('images/image-$rightNumberImage.png')),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
