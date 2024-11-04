import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizechange_pro/controller/provider.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeProvider =
        Provider.of<SizeChangerProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Text Size Changer"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Consumer<SizeChangerProvider>(
              builder: (context, sizeProvider, child) => Text(
                "Text Size Changer",
                style: TextStyle(fontSize: sizeProvider.size),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      sizeProvider.increaseSize();
                    },
                    icon: Icon(Icons.add)),
                IconButton(
                    onPressed: () {
                      sizeProvider.decreaseSize();
                    },
                    icon: Icon(Icons.remove)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
