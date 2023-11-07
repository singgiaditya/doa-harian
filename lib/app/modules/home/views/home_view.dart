import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[900],
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: const Text(
            'Doa Harian Islami',
            style: TextStyle(fontFamily: "Arabic", fontSize: 24),
          ),
        ),
        body: FutureBuilder(
            future: controller.getBacaanList(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (snapshot.hasError) {
                Center(
                  child: Text("Terjadi Kesalahan"),
                );
              }
              return ListView.builder(
                itemCount: snapshot.data?.length,
                itemBuilder: (context, index) {
                  return ExpansionTile(
                    trailing: Container(
                      width: 0,
                    ),
                    title: Text(
                      "${snapshot.data?[index].doa}",
                      style: TextStyle(
                          fontFamily: "Arabic",
                          color: Colors.white,
                          fontSize: 20),
                    ),
                    children: [
                      Text(
                        "${snapshot.data?[index].ayat}",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "${snapshot.data?[index].latin}",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "${snapshot.data?[index].arti}",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  );
                },
              );
            }));
  }
}
