import 'package:flutter/material.dart';
import 'package:navigator/navigator.dart';

import './dummyData.dart';
import './detailPage.dart';

class LandingPage extends StatelessWidget {
  var dummyData = data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: data
              .map(
                (e) => InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return DetailPage(
                          image: e.image,
                          nama: e.nama,
                          posisi: e.posisi,
                          isFavorite: e.isFavorite,
                        );
                      }),
                    );
                  },
                  child: Card(
                    margin: const EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        Image.network(e.image),
                        Text(e.nama),
                        Text(e.posisi),
                        Text(e.tim)
                      ],
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
