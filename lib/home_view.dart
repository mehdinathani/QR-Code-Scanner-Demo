import 'package:flutter/material.dart';
import 'package:qrcodedemo/components/colors.dart';
import 'package:qrcodedemo/components/image_paths.dart';
import 'package:qrcodedemo/qr_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("QR Code Scanner  - MehdiNathani"),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Image.network(AppImagesPath.applogo),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Center(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Welcome to QR Code Scanner",
                      style: TextStyle(
                        fontSize: 45,
                      ),
                    ),
                  ),
                ),
                const Expanded(
                  child: SizedBox(),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.09,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: ElevatedButton(
                      style:
                          ButtonStyle(backgroundColor: AppColors.buttonColor),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const QRViewExample(),
                          ),
                        );
                      },
                      child: const Text(
                        "Scan Me",
                        style: TextStyle(fontSize: 30),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
