import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(
    const MaterialApp(
      home: MainApp(),
    ),
  );
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Scrollbar(
          child: Container(
        margin: const EdgeInsets.only(left: 30, right: 30, top: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            QrImage(
              data: controller.text,
              size: 200,
              backgroundColor: Colors.white,
            ),
            const SizedBox(height: 40),
            Container(
                child: TextField(
              //obscureText: passwordVisible,
              controller: controller,
              decoration: InputDecoration(
                  hintText: "Contraseña",
                  suffixIcon: IconButton(
                      icon: const Icon(
                        Icons.done,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        setState(() {});
                      })),
            )),
          ],
        ),
      )),
    ));
  }
}
