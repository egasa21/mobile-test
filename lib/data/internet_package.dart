class InternetPackage {
  final double price;
  final String dueDate;
  final String provider;
  final String idPelanggan;
  final String paketLayanan;
  final String imagePath;

  InternetPackage({
    required this.price,
    required this.dueDate,
    required this.provider,
    required this.idPelanggan,
    required this.paketLayanan,
    required this.imagePath,
  });
}

List<InternetPackage> internetPackages = [
  InternetPackage(
    price: 450000,
    dueDate: "Due date on 16 Feb 2024",
    provider: "Nethome",
    idPelanggan: "1123456789",
    paketLayanan: "Nethome 100 Mbps",
    imagePath: "assets/images/nethome_logo.png"
  ),
  InternetPackage(
    price: 240000,
    dueDate: "Due date on 18 Feb 2024",
    provider: "Bizzcom",
    idPelanggan: "1123456790",
    paketLayanan: "Bizznet 200 Mbps",
    imagePath: "assets/images/bizznet_logo.png"
  ),
];
