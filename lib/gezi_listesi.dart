import 'package:flutter/material.dart';
import 'package:gezdim_gordum/gezi_item.dart';
import 'package:gezdim_gordum/yanmenu.dart';
import 'model/gezi.dart';
import 'package:gezdim_gordum/data/strings.dart';
import 'package:gezdim_gordum/login_page.dart';

class GeziListesi extends StatelessWidget {
  late final List<Gezi> tumGezilecekYerler;

  // var userName;

  GeziListesi() {
    tumGezilecekYerler = veriKaynagi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'G E Z D İ M   G Ö R D Ü M ',
          style: TextStyle(
              fontStyle: FontStyle.italic,
              // color: Colors.blue,
              // backgroundColor: Colors.blue,
              fontFamily: 'Kaushan'),
        ),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return GeziItem(
              listelenenGezi: tumGezilecekYerler[index],
            );
          },
          itemCount: tumGezilecekYerler.length,
        ),
      ),
      drawer: YanMenu(),  // üç çizgi
    );
  }

  List<Gezi> veriKaynagi() {
    List<Gezi> gecici = [];

    for (int i = 0; i < 12; i++) {
      var geziYeri = Strings.GEZILECEK_YERLER[i];
      var geziSehri = Strings.SEHIRLERI[i];
      var geziDetay = Strings.GENEL_OZELLIKLERI[i];
      var geziKucukResim =
          Strings.GEZILECEK_YERLER[i].toLowerCase() + '${i + 1}.PNG';
      var geziBuyukResim =
          Strings.GEZILECEK_YERLER[i].toLowerCase() + '_br' + '${i + 1}.PNG';
      Gezi eklenecekgezi =
          Gezi(geziYeri, geziSehri, geziDetay, geziKucukResim, geziBuyukResim);

      gecici.add(eklenecekgezi);
    }
    return gecici;
  }
}
