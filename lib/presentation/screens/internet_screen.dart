import 'package:flutter/material.dart';

class InternetScreen extends StatefulWidget {
  const InternetScreen({super.key});

  @override
  State<InternetScreen> createState() => _InternetScreenState();
}

class _InternetScreenState extends State<InternetScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.arrow_back_ios),
            color: const Color(0xff3E414C),
          ),
          title: const Text(
            "Internet",
            style: TextStyle(
                fontFamily: "Roboto",
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Container(
            padding: const EdgeInsets.all(16),
            child: Card(
              color: const Color(0xFFFFF5E6),
              shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Color(0xFFF3CC46), width: 1),
                  borderRadius: BorderRadius.circular(8)),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.info_outline,
                      color: Color(0xFFF3CC46),
                    ),
                    SizedBox(width: 8),
                    Flexible(
                      child: Text.rich(TextSpan(
                          text:
                              "Perlu diketahui, proses verifikasi transaksi dapat memakan waktu hingga ",
                          style: TextStyle(color: Colors.black, fontSize: 12),
                          children: [
                            TextSpan(
                              text: "1x24 jam",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
                            )
                          ])),
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
