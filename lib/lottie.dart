import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieScreen extends StatefulWidget {
  const LottieScreen({Key? key}) : super(key: key);

  @override
  _LottieScreenState createState() => _LottieScreenState();
}

class _LottieScreenState extends State<LottieScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(duration: Duration(seconds: 3), vsync: this);

    controller.addStatusListener((status) async {
      if (status == AnimationStatus.completed) {
        Navigator.pop(context);
        controller.reset();
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lottie animasjon'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Lottie.asset('assets/delivery.json'),
            SizedBox(
              height: 32,
            ),
            ElevatedButton.icon(
                onPressed: () {
                  doneDialog(context);
                },
                icon: Icon(
                  Icons.delivery_dining,
                  size: 40,
                ),
                label: Text('Order Pizza'))
          ],
        ),
      ),
    );

    //   void showDoneDialog() => showDialog(
    //         barrierDismissible: false,
    //         context: context,
    //         builder: (context) => Dialog(
    //           child: Column(
    //             mainAxisSize: MainAxisSize.min,
    //             children: [
    //               Lottie.asset('assets/sprinkles.json',
    //                   repeat: false,
    //                   controller: controller, onLoaded: (composition) {
    //                 controller.forward();
    //               }),
    //               const Text(
    //                 'Enjoy your order',
    //                 style: const TextStyle(
    //                     fontSize: 24, fontWeight: FontWeight.bold),
    //               ),
    //               const SizedBox(
    //                 height: 16,
    //               ),
    //             ],
    //           ),
    //         ),
    //       );
  }

  Future<dynamic> doneDialog(BuildContext context) {
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => Dialog(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Lottie.asset('assets/sprinkles.json',
                repeat: false, controller: controller, onLoaded: (composition) {
              controller.forward();
            }),
            const Text(
              'Enjoy your order',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
