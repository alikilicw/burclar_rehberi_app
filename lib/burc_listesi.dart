import 'package:burclar_rehberi_app/burc_item.dart';
import 'package:flutter/material.dart';
import 'model/burc.dart';
import 'package:burclar_rehberi_app/data/strings.dart';

class BurcListesi extends StatelessWidget {
  late List<Burc> tumBurclar;
  BurcListesi() {
    tumBurclar = veriKaynaginiHazirla();
    print(tumBurclar.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Burçlar Listesi")),
        body: Center(
            child: ListView.builder(
          itemBuilder: (context, index) {
            return BurcItem(listelenenBurc: tumBurclar[index]);
          },
          itemCount: tumBurclar.length,
        )));
  }

  List<Burc> veriKaynaginiHazirla() {
    List<Burc> gecici = [];

    for (int i = 0; i < 12; i++) {
      String burcAdi = Strings.BURC_ADLARI[i];
      String burcTarih = Strings.BURC_TARIHLERI[i];
      String burcDetay = Strings.BURC_GENEL_OZELLIKLERI[i];
      String burcKucukResim = "${burcAdi.toLowerCase()}${i + 1}.png";
      String burcBuyukResim = "${burcAdi.toLowerCase()}_buyuk${i + 1}.png";

      Burc eklenecekBurc =
          Burc(burcAdi, burcTarih, burcDetay, burcKucukResim, burcBuyukResim);
      gecici.add(eklenecekBurc);
    }
    return gecici;
  }
}
