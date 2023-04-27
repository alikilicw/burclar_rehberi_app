import 'package:burclar_rehberi_app/burc_detay.dart';
import 'package:flutter/material.dart';
import 'model/burc.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;
  const BurcItem({required this.listelenenBurc, super.key});

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => BurcDetay(secilenBurc: listelenenBurc),
              ));
            },
            leading: Image.asset("images/${listelenenBurc.burcKucukResim}",
                width: 64, height: 64),
            title:
                Text(listelenenBurc.burcAdi, style: myTextStyle.headlineSmall),
            subtitle:
                Text(listelenenBurc.burcTarihi, style: myTextStyle.titleSmall),
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.pink),
          ),
        ),
      ),
    );
  }
}
