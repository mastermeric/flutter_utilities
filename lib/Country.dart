class Country {
  String? ulke;
  String? ortalama;
  String? kadin;
  String? erkek;

  //lokal Country.json  icerigi..
  Country({this.ulke, this.ortalama, this.kadin, this.erkek});

  Country.fromJson(Map<String, dynamic> json)
      : ulke = json['ulke'].toString(),
        ortalama = json['ortalama'].toString(),
        kadin = json['kadin'].toString(),
        erkek = json['erkek'].toString();

  Map<String, dynamic> toJson() => {
        'ulke': ulke,
        'ortalama': ortalama,
        'kadin': kadin,
        'erkek': erkek,
      };
}
