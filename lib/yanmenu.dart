import 'package:flutter/material.dart';

class YanMenu extends StatefulWidget {
  const YanMenu({super.key});

  @override
  State<YanMenu> createState() => _YanMenuState();
}

class _YanMenuState extends State<YanMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 20.0),
        child: Drawer(
          backgroundColor: Colors.orange.shade100,
          child: Column(
            children: <Widget>[
              Expanded(
                child: ListView(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                      title: Text("Favorilerim"),
                      onTap: () {},
                    ),
                    Divider(
                      height: 10,
                      color: Colors.black54,
                    ),
                    ListTile(
                      leading: Icon(Icons.list, color: Colors.blue),
                      title: Text("Arkadaş Listem"),
                      onTap: () {},
                    ),
                    Divider(
                      height: 10,
                      color: Colors.black54,
                    ),
                    ListTile(
                      leading: Icon(Icons.book, color: Colors.pink.shade500),
                      title: Text("Anı Defterim"),
                      onTap: () {},
                    ),
                    Divider(
                      height: 10,
                      color: Colors.black54,
                    ),
                    ListTile(
                      leading: Icon(Icons.next_plan, color: Colors.green),
                      title: Text("Plan Defterim"),
                      onTap: () {},
                    ),
                    Divider(
                      height: 10,
                      color: Colors.black54,
                    ),
                    ExpansionTile(
                      leading: Icon(Icons.business_center_sharp,
                          color: Colors.orange),
                      title: Text('Etkileşimler'),
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: ListTile(
                            leading: Icon(
                              Icons.facebook,
                              color: Colors.blue,
                            ),
                            title: Text('Facebookda Paylaş'),
                            onTap: () {},
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: ListTile(
                            leading:
                                Icon(Icons.camera_alt, color: Colors.purple),
                            title: Text('Instagramda Paylaş'),
                            onTap: () {},
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: ListTile(
                            leading: Icon(
                              Icons.whatsapp,
                              color: Colors.green.shade500,
                            ),
                            title: Text('Whatsappda Paylaş'),
                            onTap: () {},
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: ListTile(
                            leading: Icon(Icons.share, color: Colors.teal),
                            title: Text('Arkadaşlarıma Öner'),
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
