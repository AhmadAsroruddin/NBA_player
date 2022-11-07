import 'package:flutter/material.dart';

class Player {
  Player(
      {required this.nama,
      required this.image,
      required this.posisi,
      required this.tim,
      required this.isFavorite});

  String nama;
  String image;
  String posisi;
  String tim;
  bool isFavorite;
}
