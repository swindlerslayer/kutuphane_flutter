import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kutuphane_mobil_d/Controllers/yayinevi_controller.dart';
import 'package:kutuphane_mobil_d/Ekranlar/nav-drawer.dart';

class YayineviSayfasi extends StatelessWidget {
  YayineviSayfasi({Key? key, this.kullanici}) : super(key: key);
  final cont = Get.put(YayineviController());
  final kullanici;
  // var kitaplar = kitapcontroller.GetKitap(
  //     kullanici.kullaniciAdi.toString(), kullanici.parola.toString());
  @override
  Widget build(BuildContext context) {
    PopupMenuButton(
      icon: const Icon(Icons.menu),
      itemBuilder: (context) => [
        PopupMenuItem(
          child: const Text("Düzenle"),
          onTap: () {},
        ),
        PopupMenuItem(
          child: const Text("Sil"),
          onTap: () {},
        ),
        PopupMenuItem(
          child: const Text("Google.com"),
          onTap: () {},
        ),
      ],
    );
    return Scaffold(
      drawer: NavDrawer(kullanici: kullanici),
      appBar: AppBar(
        title: const Text('Yayinevi Sayfası'),
      ),
      body: Container(
        child: Obx(
          () => ListView.builder(
            shrinkWrap: true,
            itemCount: cont.yayineviliste.length,
            itemBuilder: (context, index) {
              var data = cont.yayineviliste[index];
              return GestureDetector(
                onLongPress: () {
                  print('LONGPRES');
                },
                child: Card(
                  child: ListTile(
                    leading: const Icon(
                      Icons.home_work,
                    ),
                    title: Text(data.adi ?? ""),
                    onTap: () {},
                  ), //listtile
                ), //card
              ); //guesturedetector
            },
          ),
        ),
      ),
    );
  }
}
