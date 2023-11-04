import 'package:flutter/material.dart';
import 'package:qrcodedemo/qr_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const QRViewExample(),
                ),
              );
            },
            child: const Text("qrView")),
      ),
    );
  }
}
