import 'package:flutter/material.dart';
import './my_apps.dart';
import './app_item.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Velg en App'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        children: myApps
            .map(
              (appData) => AppItem(
                appData.title,
                appData.description,
                appData.color,
                appData.route,
              ),
            )
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
