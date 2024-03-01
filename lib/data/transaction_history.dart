class TransactionHistory {
  final String name;
  final String dueDate;
  final String price;
  final String imagePath;

  TransactionHistory({
    required this.name,
    required this.dueDate,
    required this.price,
    required this.imagePath,
  });
}

List<TransactionHistory> dummyHistory = [
  TransactionHistory(
    name: 'Nethome',
    dueDate: '15 Feb 2024 10:32',
    price: 'Rp455,000',
    imagePath: 'assets/images/nethome_logo.png',
  ),
  TransactionHistory(
    name: 'Bizzcom',
    dueDate: '14 Feb 2024 16:12',
    price: 'Rp245,000',
    imagePath: 'assets/images/bizznet_logo.png',
  ),
  TransactionHistory(
    name: 'Nethome',
    dueDate: '17 Feb 2024 11:24',
    price: 'Rp455,000',
    imagePath: 'assets/images/nethome_logo.png',
  ),
];
