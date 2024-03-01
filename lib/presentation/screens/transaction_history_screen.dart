import 'package:flutter/material.dart';
import 'package:internet_feature/data/transaction_history.dart';

class TransactionHistoryScreen extends StatelessWidget {
  const TransactionHistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              "Transaction History",
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
      body: Container(
        color: const Color(0xFFE9E9E9),
        child: ListView.builder(
          itemCount: dummyHistory.length,
          itemBuilder: (context, index) {
            return Container(
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
                                    color: Colors.black),
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
                                fontWeight: FontWeight.w500, color: Colors.black),
                          )
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
            );
          },
        ),
      ),
    );
  }
}
