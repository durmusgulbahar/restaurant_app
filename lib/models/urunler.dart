// ignore: camel_case_types
class urunler {
  List<Urun>? urunler2;

  urunler({this.urunler2});

  urunler.fromJson(Map<String, dynamic> json) {
    if (json['urunler'] != null) {
      json['urunler'].forEach((v) {
        urunler2?.add(Urun.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.urunler2 != null) {
      data['urunler'] = this.urunler2?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Urun {
  String? kategori;
  String? isim;
  String? aciklama;
  int? fiyat;
  String? gorsel;

  Urun({this.kategori, this.isim, this.aciklama, this.fiyat, this.gorsel});

  Urun.fromJson(Map<String, dynamic> json) {
    kategori = json['kategori'];
    isim = json['isim'];
    aciklama = json['aciklama'];
    fiyat = json['fiyat'];
    gorsel = json['gorsel'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kategori'] = this.kategori;
    data['isim'] = this.isim;
    data['aciklama'] = this.aciklama;
    data['fiyat'] = this.fiyat;
    data['gorsel'] = this.gorsel;
    return data;
  }
}
