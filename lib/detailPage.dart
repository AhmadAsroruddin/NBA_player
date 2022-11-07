import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  static const routeName = './DetailPage';

  DetailPage(
      {required this.nama,
      required this.image,
      required this.posisi,
      required this.isFavorite});

  String nama;
  String image;
  String posisi;
  bool isFavorite;
  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool nMode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: nMode ? Colors.black : Colors.white),
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 70,
              ),
              Image.network(widget.image),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Switch(
                    value: nMode,
                    onChanged: (value) {
                      setState(
                        () {
                          nMode = value;
                        },
                      );
                    },
                  ),
                  const Text("Night Mode")
                ],
              ),
              Text(
                widget.nama,
                style: TextStyle(
                    fontSize: 50, color: nMode ? Colors.white : Colors.black),
              ),
              Text(widget.posisi,
                  style: TextStyle(
                      fontSize: 20, color: nMode ? Colors.white : Colors.black))
            ],
          ),
        ),
      ),
    );
  }
}
