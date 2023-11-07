class Doa {
  final String doa;
  final String ayat;
  final String latin;
  final String arti;

  Doa(
      {required this.doa,
      required this.ayat,
      required this.latin,
      required this.arti});

  factory Doa.fromJson(Map<String, dynamic> json) {
    return Doa(
        doa: json['doa'],
        ayat: json['ayat'],
        latin: json['latin'],
        arti: json['artinya']);
  }
}
