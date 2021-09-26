import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class AppItem extends StatelessWidget {
  final String title;
  final Color color;
  final String route;

  AppItem(
    this.title,
    this.color,
    this.route,
  );

  void selectApp(BuildContext ctx, appRoute) {
    Navigator.of(ctx).pushNamed('/${appRoute}');
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectApp(context, route),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Shimmer.fromColors(
          baseColor: Colors.black,
          highlightColor: Colors.yellow,
          period: Duration(milliseconds: 3000),
          // loop: 4,
          child: Text(
            title,
            style: Theme.of(context).textTheme.caption,
          ),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [color.withOpacity(0.5), color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
