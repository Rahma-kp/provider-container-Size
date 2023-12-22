import 'package:container/provider/class.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final change = Provider.of<ChangeSize>(context);
    return Scaffold(
      appBar: AppBar(title:Text('HOME'),
        backgroundColor: const Color.fromARGB(255, 235, 168, 163),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: change.height,
              width: change.width,
              color: Colors.amber,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      change.increment();
                    },
                    child: const Text(
                      'Tap here',
                      style: TextStyle(color: Colors.red),
                    )),
                TextButton(
                    onPressed: () {
                      change.reset();
                    },
                    child: const Text(
                      "Reset",
                      style: TextStyle(color: Colors.blue),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
