import 'package:flutter/material.dart';
import 'package:internet_feature/presentation/widgets/my_app_bar.dart';
import 'package:internet_feature/presentation/widgets/row_builder.dart';
import 'package:internet_feature/data/transaction_history.dart'; // Import the transaction history model

class TransactionDetailScreen extends StatelessWidget {
  final TransactionHistory transactionHistory; // Add this field

  const TransactionDetailScreen({Key? key, required this.transactionHistory})
      : super(key: key); // Modify constructor to accept transaction history

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: "Transaction Details"),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.circle_outlined,
                  size: 80,
                  color: Color(0xFFE12029),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Rp",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      transactionHistory
                          .price, // Use price from transaction history
                      style: const TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                const Text(
                  "Pembayaran Berhasil",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFE12029),
                  ),
                )
              ],
            ),
          ),
          const Divider(
            color: Color(0xFFFAFAFC),
            thickness: 8,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                buildRow(
                    "Provider",
                    transactionHistory
                        .name), // Use provider from transaction history
                buildRow("ID Pelanggan",
                    "1123645718921"), // Placeholder data, replace as needed
                buildRow("Paket Layanan",
                    "Nethome 100 Mbps"), // Placeholder data, replace as needed
              ],
            ),
          ),
          const Divider(
            color: Color(0xFFFAFAFC),
            thickness: 8,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                buildRow("No. Transaksi",
                    "BC444724669887648110"), // Placeholder data, replace as needed
                const Divider(
                  color: Color(0xFFFAFAFC),
                  height: 0,
                  thickness: 1,
                  indent: 16,
                  endIndent: 16,
                ),
                buildRow("Waktu Transaksi",
                    "1123645718921"), // Placeholder data, replace as needed
                const Divider(
                  color: Color(0xFFFAFAFC),
                  height: 0,
                  thickness: 1,
                  indent: 16,
                  endIndent: 16,
                ),
                buildRow(
                    "Jumlah Tagihan",
                    transactionHistory
                        .price), // Use price from transaction history
                const Divider(
                  color: Color(0xFFFAFAFC),
                  thickness: 1,
                ),
                buildRow("Convenience Fee",
                    "Rp5.000"), // Placeholder data, replace as needed
                const Divider(
                  color: Color(0xFFFAFAFC),
                  thickness: 1,
                ),
                buildRow("Payment Method",
                    "BCA Virtual Account"), // Placeholder data, replace as needed
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: const Color(0xFFFAFAFC),
              alignment: Alignment.center,
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  "Proses verifikasi transaksi dapat memakan waktu hingga 1x24 jam.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF838799)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
