import 'package:flutter/material.dart';

class EggScreen extends StatefulWidget {
  @override
  State<EggScreen> createState() => _EggScreenState();
}

class _EggScreenState extends State<EggScreen> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _count++;
                });
                debugPrint('Tapped $_count!');
              },
              child: loadEggImage(),
            ),
            Text(
              "$_count Clicks",
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  loadEggImage() {
    var image = '';
    if (_count < 5) {
      image = 'assets/egg1.png';
    } else if (_count < 10) {
      image = 'assets/egg2.png';
    } else if (_count < 20) {
      image = 'assets/egg3.png';
    } else if (_count < 30) {
      image = 'assets/egg4.png';
    } else if (_count < 40) {
      image = 'assets/egg5.png';
    } else {
      image = 'assets/egg6.png';
    }

    return SizedBox(
      width: 300,
      height: 300,
      child: Image(
        image: AssetImage(image),
      ),
    );
  }
}
