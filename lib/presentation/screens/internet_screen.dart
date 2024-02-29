import 'package:flutter/material.dart';
import 'package:internet_feature/presentation/widgets/expandable_card_widget.dart';

class InternetScreen extends StatefulWidget {
  const InternetScreen({Key? key}) : super(key: key);

  @override
  State<InternetScreen> createState() => _InternetScreenState();
}

class _InternetScreenState extends State<InternetScreen> {
  // final bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 0,
                  blurRadius: 2,
                  offset: const Offset(0, 3),
                )
              ],
            ),
            child: AppBar(
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
                  fontWeight: FontWeight.w500,
                ),
              ),
              centerTitle: true,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Card(
                color: const Color(0xFFFFF5E6),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Color(0xFFF3CC46), width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.info_outline,
                        color: Color(0xFFF3CC46),
                      ),
                      SizedBox(width: 8),
                      Flexible(
                        child: Text.rich(
                          TextSpan(
                            text:
                                "Perlu diketahui, proses verifikasi transaksi dapat memakan waktu hingga ",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: "Roboto",
                            ),
                            children: [
                              TextSpan(
                                text: "1x24 jam",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 6.0, right: 6.0, top: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Choose All",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 24.0,
                      width: 24.0,
                      child: Checkbox(
                        value: false,
                        onChanged: (bool? newValue) {},
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              const Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ExpandableCardWidget(),
                      ExpandableCardWidget(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
