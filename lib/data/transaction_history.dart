class TransactionHistory {
  final String name;
  final String dueDate;
  final String price;
  final String imagePath;
  final String idPelanggan;
  final String paketLayanan;
  final String noTransaksi;
  final String waktuTransaksi;
  final String jumlahTagihan;
  final String convenienceFee;
  final String paymentMethod;

  TransactionHistory({
    required this.name,
    required this.dueDate,
    required this.price,
    required this.imagePath,
    required this.idPelanggan,
    required this.paketLayanan,
    required this.noTransaksi,
    required this.waktuTransaksi,
    required this.jumlahTagihan,
    required this.convenienceFee,
    required this.paymentMethod,
  });
}

List<TransactionHistory> dummyHistory = [
  TransactionHistory(
    name: 'Nethome',
    dueDate: '15 Feb 2024 10:32',
    price: 'Rp455,000',
    imagePath: 'assets/images/nethome_logo.png',
    idPelanggan: '1123645718921',
    paketLayanan: 'Nethome 100 Mbps',
    noTransaksi: 'BC444724669887648110',
    waktuTransaksi: '15 Feb 2024 10:32',
    jumlahTagihan: 'Rp450.000',
    convenienceFee: 'Rp5.000',
    paymentMethod: 'BCA Virtual Account',
  ),
  TransactionHistory(
    name: 'Bizzcom',
    dueDate: '14 Feb 2024 16:12',
    price: 'Rp245,000',
    imagePath: 'assets/images/bizznet_logo.png',
    idPelanggan: '1123645718921',
    paketLayanan: 'Bizzcom 50 Mbps',
    noTransaksi: 'BC444724669887648111',
    waktuTransaksi: '14 Feb 2024 16:12',
    jumlahTagihan: 'Rp250.000',
    convenienceFee: 'Rp5.000',
    paymentMethod: 'Credit Card',
  ),
  TransactionHistory(
    name: 'Nethome',
    dueDate: '17 Feb 2024 11:24',
    price: 'Rp455,000',
    imagePath: 'assets/images/nethome_logo.png',
    idPelanggan: '1123645718921',
    paketLayanan: 'Nethome 100 Mbps',
    noTransaksi: 'BC444724669887648112',
    waktuTransaksi: '17 Feb 2024 11:24',
    jumlahTagihan: 'Rp450.000',
    convenienceFee: 'Rp5.000',
    paymentMethod: 'BCA Virtual Account',
  ),
];
