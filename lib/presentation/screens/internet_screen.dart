import 'package:flutter/material.dart';
import 'package:internet_feature/data/internet_package.dart';
import 'package:internet_feature/presentation/screens/transaction_history_screen.dart';
import 'package:internet_feature/presentation/widgets/expandable_card_widget.dart';
import 'package:internet_feature/presentation/widgets/my_app_bar.dart';
import 'package:intl/intl.dart'; // Import intl package

class InternetScreen extends StatefulWidget {
  const InternetScreen({Key? key}) : super(key: key);

  @override
  State<InternetScreen> createState() => _InternetScreenState();
}

class _InternetScreenState extends State<InternetScreen> {
  bool _isAllSelected = false;
  List<bool> _cardSelection =
      List.generate(internetPackages.length, (index) => false);
  double _totalPrice = 0.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: const MyAppBar(title: "Internet"),
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
                        value: _isAllSelected,
                        onChanged: (bool? newValue) {
                          setState(() {
                            _isAllSelected = newValue ?? false;
                            _cardSelection = List.generate(
                                internetPackages.length,
                                (index) => _isAllSelected);
                            _updateTotalPrice();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...List.generate(internetPackages.length, (index) {
                        return ExpandableCardWidget(
                          price: internetPackages[index].price,
                          dueDate: internetPackages[index].dueDate,
                          provider: internetPackages[index].provider,
                          idPelanggan: internetPackages[index].idPelanggan,
                          paketLayanan: internetPackages[index].paketLayanan,
                          isChecked: _cardSelection[index],
                          imagePath: internetPackages[index].imagePath,
                          onCheckboxChanged: (isChecked) {
                            setState(() {
                              _cardSelection[index] = isChecked ?? false;
                              _isAllSelected =
                                  _cardSelection.every((value) => value);
                              _updateTotalPrice();
                            });
                          },
                        );
                      }),
                      MyCustomIconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const TransactionHistoryScreen(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 16), // Add padding here
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/icons/ic_bill.png",
                          width: 24,
                          height: 24,
                        ),
                        const SizedBox(
                            width: 8), // Add space between Icon and Text
                        const Text(
                          "Total Payment",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                            width: 8), // Add space between Text and Price
                        const Spacer(), // Fill available space
                        Text(
                          NumberFormat.currency(
                            locale: 'id',
                            symbol: 'Rp',
                            decimalDigits: 0,
                          ).format(
                              _totalPrice), // Display total price in rupiah format
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF244091),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 16), // Add padding here
                    const MyCustomButton(onPressed: emptyFunction),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _updateTotalPrice() {
    _totalPrice = 0.0;
    for (int i = 0; i < internetPackages.length; i++) {
      if (_cardSelection[i]) {
        _totalPrice += internetPackages[i].price;
      }
    }
  }
}

class MyCustomIconButton extends StatelessWidget {
  final VoidCallback onPressed;

  const MyCustomIconButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: const Padding(
        padding: EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Transaction History"),
            Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}

class MyCustomButton extends StatelessWidget {
  const MyCustomButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFE12029),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: onPressed,
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Text(
            'PAY NOW',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

void emptyFunction() {}
