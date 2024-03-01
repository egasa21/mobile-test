import 'dart:ffi';

class InternetPackage {
  final double price;
  final String dueDate;
  final String provider;
  final String idPelanggan;
  final String paketLayanan;

  InternetPackage({
    required this.price,
    required this.dueDate,
    required this.provider,
    required this.idPelanggan,
    required this.paketLayanan,
  });
}

List<InternetPackage> internetPackages = [
  InternetPackage(
    price: 450000,
    dueDate: "Due date on 16 Feb 2024",
    provider: "Nethome",
    idPelanggan: "1123456789",
    paketLayanan: "Nethome 100 Mbps",
  ),
  InternetPackage(
    price: 500000,
    dueDate: "Due date on 18 Feb 2024",
    provider: "Bizzcom",
    idPelanggan: "1123456790",
    paketLayanan: "Provider B 200 Mbps",
  ),
];
