import 'package:flutter/material.dart';

// TODO:
// 1) Make the app react to the change in state! The egg should break after 40 clicks!
// 2) Increase font size for the "i clicks" label. Bonus: make it BOLD.

class EggScreen extends StatelessWidget {
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
                _count++;
                debugPrint('Tapped $_count!');
              },
              child: loadEggImage(),
            ),
            Text(
              "$_count Clicks",
              style: const TextStyle(
                fontSize: 30,
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
