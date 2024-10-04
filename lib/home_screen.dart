import 'package:ecomerce/data_page.dart';
import 'package:ecomerce/deskripsi_page.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Center(child: const Text('Ecomerce')),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final DataPage date = DataPagelist[index];
          return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DeskripsiPage(date: date,);
                }));
              },
              child: SizedBox(
                height: 150,
                width: double.infinity,
                child: Card(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Expanded(flex: 1, child: Image.asset(date.imagessets)),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(date.nama, style: TextStyle(fontSize: 15)),
                              SizedBox(height: 10,),
                              Text(date.type, style: TextStyle(fontSize: 10),)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ));
        },
        itemCount: DataPagelist.length,
      ),
    );
  }
}
