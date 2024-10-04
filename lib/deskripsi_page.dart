import 'package:ecomerce/data_page.dart';
import 'package:flutter/material.dart';

class DeskripsiPage extends StatefulWidget {
  final DataPage date;

  DeskripsiPage({Key? key, required this.date}) : super(key: key);

  @override
  State<DeskripsiPage> createState() => _DeskripsiPageState();
}

class _DeskripsiPageState extends State<DeskripsiPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  _kembali() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            children: [
              Image.asset(widget.date.imagessets),
              SafeArea(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () => _kembali(),
                        icon: Icon(Icons.arrow_back),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
              widget.date.type,
              style: const TextStyle(
                fontFamily: 'oxygen',
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Text(
              widget.date.deskripsi,
              style: const TextStyle(
                fontFamily: 'oxygen',
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: Text(
              widget.date.harga,
              style: const TextStyle(
                fontFamily: 'oxygen',
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colors.blue,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 5),
          Container(
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Center(child: Text('Data Beli')),
                            const SizedBox(
                              height: 5,
                            ),
                            TextField(
                              controller: _nameController,
                              decoration: InputDecoration(
                                  labelText: 'Masukkan Nama',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15))),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextField(
                              controller: _addressController,
                              decoration: InputDecoration(
                                  labelText: 'Masukkan Alamat',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15))),
                            ),
                          ],
                        ),
                      ),
                      actions: [
                        ElevatedButton(
                          onPressed: () {
                            // Ambil nilai dari TextField
                            String name = _nameController.text;
                            String address = _addressController.text;

                            // Tampilkan dialog konfirmasi
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                          '${name} berhasil membeli ${widget.date.nama} dan dipesan di alamat ${address} dengan harga ${widget.date.harga}'),
                                    ],
                                  ),
                                  actions: [
                                    OutlinedButton(
                                        onPressed: () => _kembali(),
                                        child: Text('Kembali'))
                                  ],
                                );
                              },
                            );
                          },
                          child: const Text('Membeli'),
                        ),
                        OutlinedButton(
                            onPressed: () => _kembali(),
                            child: Text('Kembali')),
                      ],
                    );
                  },
                );
              },
              child: const Text('Beli Sekarang'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
