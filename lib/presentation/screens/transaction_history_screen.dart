import 'package:flutter/material.dart';
import 'package:internet_feature/data/transaction_history.dart';
import 'package:internet_feature/presentation/widgets/my_app_bar.dart';
import 'transaction_detail_screen.dart'; // Import the transaction detail screen

class TransactionHistoryScreen extends StatelessWidget {
  const TransactionHistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: "Transaction History"),
      body: Container(
        color: const Color(0xFFE9E9E9),
        child: ListView.builder(
          itemCount: dummyHistory.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                // Navigate to TransactionDetailScreen with transaction data
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TransactionDetailScreen(
                      transactionHistory: dummyHistory[index],
                    ),
                  ),
                );
              },
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    ListTile(
                      leading: Image.asset(
                        dummyHistory[index].imagePath,
                        width: 24,
                        height: 24,
                      ),
                      title: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  dummyHistory[index].name,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  dummyHistory[index].dueDate,
                                  style: const TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                            Text(
                              dummyHistory[index].price,
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Divider(
                      color: Color(0xFFE9E9E9),
                      height: 0,
                      thickness: 1,
                      indent: 16,
                      endIndent: 16,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
