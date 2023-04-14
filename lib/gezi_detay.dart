import 'package:flutter/material.dart';
import 'package:gezdim_gordum/model/gezi.dart';

class GeziDetay extends StatelessWidget {
  final Gezi secilenGezi;
  const GeziDetay({required this.secilenGezi, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 250,
          pinned: true,
          backgroundColor: Colors.blue,
          flexibleSpace: FlexibleSpaceBar(
              title: Text(
                secilenGezi.geziSehri + ' Hakkında ',
                style: TextStyle(color: Colors.black),
              ),
              centerTitle: true,
              background: Image.asset(
                'image/' + secilenGezi.geziBuyukresim,
                fit: BoxFit.cover,
              )),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(8),
            color: Colors.grey.shade300,
            child: SingleChildScrollView(
              child: Text(
                secilenGezi.geziDetayi,
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
          ),
        )
      ],
    ));
  }
}
