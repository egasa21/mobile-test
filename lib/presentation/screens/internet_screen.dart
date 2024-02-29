import 'package:flutter/material.dart';

class InternetScreen extends StatefulWidget {
  const InternetScreen({super.key});

  @override
  State<InternetScreen> createState() => _InternetScreenState();
}

class _InternetScreenState extends State<InternetScreen> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.arrow_back_ios),
            color: const Color(0xff3E414C),
          ),
          title: const Text("Internet"),
          centerTitle: true,
        ),
        body: const Center(
          child: Text("hello"),
        ),
      ),
    );
  }
}
