import 'package:flutter/material.dart';
import 'package:gezdim_gordum/gezi_detay.dart';
import 'package:gezdim_gordum/model/gezi.dart';

class GeziItem extends StatelessWidget {
  final Gezi listelenenGezi;
  const GeziItem({required this.listelenenGezi, Key? key}) : super(key: key);

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
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => GeziDetay(secilenGezi: listelenenGezi),
                ),
              );
            },
               leading: Image.asset('image/' + listelenenGezi.geziKucukResim,
               //width: 64,height: 64,
              ),   
             title: Text(
              listelenenGezi.geziYeri,
              style: myTextStyle.headline5,
            ), 
            subtitle: Text(
              listelenenGezi.geziSehri,
              style: myTextStyle.subtitle1,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.pink,
            ),
          ),
        ),
      ),
    );
  }
}