import 'package:flutter/material.dart';

void main() {
  runApp(const ProfilePage());
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[700],
          leading: null,
          title: const Text(
            "Insan Page",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: buildWireframeBox(aspectRatio: 1.0, hasCross: true),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: buildWireframeBox(aspectRatio: 1.0, hasCross: true),
                  ),
                ],
              ),
              const SizedBox(height: 55),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [buildIconBox(), buildIconBox(), buildIconBox()],
              ),
              const SizedBox(height: 75),

              Text(
                "Kabar peretasan data nasabah sempat menghebohkan dunia perbankan. Kali ini datang dari salah satu bank syariah milik Badan Usaha Milik Negara. Pada tanggal 8 Mei,  layanan mobile banking dan ATM BSI (Bank Syariah Indonesia) terganggu selama sepekan. Awalnya, BSI menjelaskan bahwa gangguan tersebut terjadi karena sedang dilakukan pemeliharaan sistem sehingga layanan tidak dapat diakses untuk sementara waktu. ",
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildWireframeBox({
    required double aspectRatio,
    bool hasCross = false,
  }) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.lightGreen,
          border: Border.all(color: Colors.black, width: 1.5),
        ),
        child: hasCross
            ? Center(
                child: Text(
                  "Text",
                  style: TextStyle(
                    fontSize: 30,
                    color: const Color.fromARGB(255, 3, 3, 3),
                  ),
                ),
              )
            : null,
      ),
    );
  }

  Widget buildIconBox() {
    return Column(
      children: [
        Container(
          width: 75,
          height: 65,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 140, 210, 208),
            border: Border.all(color: Colors.black, width: 1.5),
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          "Text",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        ),
      ],
    );
  }

  Widget buildTextLine({required double widthFactor}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: FractionallySizedBox(
        widthFactor: widthFactor,
        child: Container(height: 3, color: Colors.black),
      ),
    );
  }
}
