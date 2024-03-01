import 'package:flutter/material.dart';

Widget buildRow(String name, String value) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Row(
      children: [
        Expanded(
          child: Text(
            name,
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              value,
            ),
          ),
        ),
      ],
    ),
  );
}
